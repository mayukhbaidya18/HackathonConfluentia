import Foundation
import SwiftUI
import FoundationModels

@Observable
final class AIFriendChatManager {
    var messages: [AIFriendMessage] = []
    var isSoundEnabled: Bool = true
    var isThinking: Bool = false
    var currentProfile: AIFriendProfile = AIFriendData.isabella
    
    // Derived keys based on current profile
    private var messagesKey: String { "chat_history_\(currentProfile.id)" }
    private let soundKey = "aifriend_sound_enabled" // Shared preference
    
    // Managers
    private let ttsManager = TextToSpeechManager()
    
    // AI Model
    private var model = SystemLanguageModel.default
    private var session: LanguageModelSession?
    
    init() {
        loadPreferences()
        // We don't load messages or init session here anymore, we do it when entering chat
    }
    
    func switchToProfile(_ profile: AIFriendProfile) {
        self.currentProfile = profile
        loadMessages()
        
        // Add welcome message if chat is empty for this profile
        if messages.isEmpty {
            let welcome = AIFriendMessage(content: profile.initialMessage, isFromUser: false)
            messages.append(welcome)
            saveMessages()
        }
        
        initializeAISession()
    }
    
    // MARK: - AI Session
    
    private func initializeAISession() {
        // Build context from recent history (last 10 messages)
        let recentHistory = messages.suffix(10).map { msg in
            "\(msg.isFromUser ? "User" : currentProfile.name): \(msg.content)"
        }.joined(separator: "\n")
        
        let contextInstruction = """
        \(currentProfile.personaPrompt)
        
        Recent conversation context:
        \(recentHistory)
        """
        
        session = LanguageModelSession(instructions: contextInstruction)
    }
    
    // MARK: - Message Management
    
    func sendMessage(_ text: String) {
        // 1. Add User Message
        let newMessage = AIFriendMessage(content: text, isFromUser: true)
        messages.append(newMessage)
        saveMessages()
        
        // Stop any previous speech when user sends a message
        ttsManager.stopSpeaking()
        
        // 2. Generate AI Response
        Task {
            await generateAIResponse(for: text)
        }
    }
    
    private func generateAIResponse(for input: String) async {
        guard let session = session else { return }
        
        isThinking = true
        
        do {
            let stream = session.streamResponse(to: input)
            var responseContent = ""
            
            for try await streamData in stream {
                responseContent = streamData.content
            }
            
            await MainActor.run {
                let responseMessage = AIFriendMessage(content: responseContent, isFromUser: false)
                self.messages.append(responseMessage)
                self.saveMessages()
                self.isThinking = false
                
                // Speak the response if sound is enabled
                if self.isSoundEnabled {
                    self.ttsManager.speak(responseContent)
                }
            }
            
        } catch {
            print("AI Error: \(error)")
            await MainActor.run {
                let errorMessage = AIFriendMessage(content: "I'm having a little trouble connecting right now, but I'm still here for you. Can you say that again?", isFromUser: false)
                self.messages.append(errorMessage)
                self.saveMessages()
                self.isThinking = false
                
                if self.isSoundEnabled {
                    self.ttsManager.speak(errorMessage.content)
                }
            }
        }
    }
    
    func clearHistory() {
        messages.removeAll()
        let welcome = AIFriendMessage(content: currentProfile.initialMessage, isFromUser: false)
        messages.append(welcome)
        saveMessages()
        ttsManager.stopSpeaking()
        
        // Reset AI Context
        initializeAISession()
    }
    
    // MARK: - Preferences
    
    func toggleSound() {
        isSoundEnabled.toggle()
        savePreferences()
        
        if !isSoundEnabled {
            ttsManager.stopSpeaking()
        }
    }
    
    // MARK: - Persistence
    
    private func saveMessages() {
        if let encoded = try? JSONEncoder().encode(messages) {
            UserDefaults.standard.set(encoded, forKey: messagesKey)
        }
    }
    
    private func loadMessages() {
        if let data = UserDefaults.standard.data(forKey: messagesKey),
           let decoded = try? JSONDecoder().decode([AIFriendMessage].self, from: data) {
            messages = decoded
        } else {
            messages = []
        }
    }
    
    private func savePreferences() {
        UserDefaults.standard.set(isSoundEnabled, forKey: soundKey)
    }
    
    private func loadPreferences() {
        if UserDefaults.standard.object(forKey: soundKey) != nil {
            isSoundEnabled = UserDefaults.standard.bool(forKey: soundKey)
        }
    }
}
