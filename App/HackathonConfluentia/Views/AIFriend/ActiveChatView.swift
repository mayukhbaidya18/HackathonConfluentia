import SwiftUI

struct ActiveChatView: View {
    @Binding var showHome: Bool
    @State private var inputText: String = ""
    @FocusState private var isInputFocused: Bool
    @State private var showEndConfirmation = false
    
    // Use the Manager for state and logic
    var chatManager: AIFriendChatManager
    @State private var voiceManager = VoiceInputManager()
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            headerView
            
            // Message Area
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 16) {
                        Spacer().frame(height: 20)
                        
                        ForEach(chatManager.messages) { message in
                            ChatBubbleView(message: .init(content: message.content, isFromUser: message.isFromUser, timestamp: message.timestamp, messageType: .text)) // Mapping to ChatMessage for reusable view, or update ChatBubbleView to accept AIFriendMessage
                                .id(message.id)
                        }
                        
                        if chatManager.isThinking {
                            HStack {
                                TypingIndicatorView()
                                Spacer()
                            }
                            .padding(.leading)
                            .transition(.opacity.combined(with: .scale))
                        }
                        
                        Spacer().frame(height: 20)
                    }
                }
                .onChange(of: chatManager.messages.count) { _ in
                    scrollToBottom(proxy)
                }
                .onChange(of: chatManager.isThinking) { _ in
                    scrollToBottom(proxy)
                }
                .onChange(of: isInputFocused) { focused in
                    if focused {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            scrollToBottom(proxy)
                        }
                    }
                }
            }
            .onTapGesture {
                isInputFocused = false
            }
            
            // Input Area
            inputArea
        }
        .background(Color(red: 1.0, green: 0.98, blue: 0.96)) // Soft peach/cream background
        .alert("End Conversation?", isPresented: $showEndConfirmation) {
            Button("Cancel", role: .cancel) { }
            Button("End Chat", role: .destructive) {
                withAnimation {
                    chatManager.clearHistory()
                    showHome = true
                }
            }
        } message: {
            Text("This will end the current session and return to the home screen.")
        }
        .onChange(of: voiceManager.recognizedText) { newText in
            if !newText.isEmpty {
                inputText = newText
            }
        }
    }
    
    private func scrollToBottom(_ proxy: ScrollViewProxy) {
        if let lastMessage = chatManager.messages.last {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                proxy.scrollTo(lastMessage.id, anchor: .bottom)
            }
        }
    }
    
    private var headerView: some View {
        HStack {
            Button(action: {
                // Back button acts as End Chat or just Minimize? 
                // Requirement says "after ending the chat... go to home screen".
                // Let's treat back as confirm end.
                showEndConfirmation = true
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.primary)
            }
            
            // Profile Image
            ZStack {
                Circle()
                    .stroke(Color.orange.opacity(0.3), lineWidth: 2)
                    .frame(width: 44, height: 44)

                // Dynamic Profile Image from Assets
                Image(chatManager.currentProfile.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 44, height: 44)
                    .clipShape(Circle())

                // Online Indicator
                Circle()
                    .fill(Color.green)
                    .frame(width: 10, height: 10)
                    .background(Circle().fill(Color.white).frame(width: 14, height: 14))
                    .offset(x: 14, y: 14)
            }
            
            VStack(alignment: .leading, spacing: 2) {
                Text(chatManager.currentProfile.name)
                    .font(.headline)
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.green)
            }
            
            Spacer()
            
            // Sound Toggle
            Button(action: { chatManager.toggleSound() }) {
                Image(systemName: chatManager.isSoundEnabled ? "speaker.wave.2.circle" : "speaker.slash.circle")
                    .font(.title2)
                    .foregroundColor(.orange)
                    .padding(8)
                    .background(Color.orange.opacity(0.1))
                    .clipShape(Circle())
            }
            
            // End Chat
            Button(action: { showEndConfirmation = true }) {
                HStack(spacing: 4) {
                    Image(systemName: "xmark")
                        .font(.caption)
                    Text("End")
                        .font(.caption)
                        .fontWeight(.medium)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .foregroundColor(.secondary)
                .background(Color.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
            }
        }
        .padding()
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.02), radius: 10, x: 0, y: 5)
    }
    
    private var inputArea: some View {
        HStack(spacing: 12) {
            Button(action: toggleRecording) {
                Image(systemName: voiceManager.isRecording ? "stop.circle.fill" : "mic.circle.fill")
                    .font(.system(size: 40))
                    .foregroundColor(voiceManager.isRecording ? .red : .orange)
                    .shadow(color: .orange.opacity(0.3), radius: 5, x: 0, y: 2)
                    .scaleEffect(voiceManager.isRecording ? 1.1 : 1.0)
                    .animation(.easeInOut(duration: 0.2), value: voiceManager.isRecording)
            }
            
            HStack {
                TextField("Type your message here...", text: $inputText, axis: .vertical)
                    .focused($isInputFocused)
                    .lineLimit(1...5)
                
                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 20))
                        .foregroundColor(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? .gray.opacity(0.5) : .white)
                        .padding(8)
                        .background(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? Color.gray.opacity(0.2) : .orange)
                        .clipShape(Circle())
                }
                .disabled(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            }
            .padding(8)
            .padding(.leading, 8)
            .background(Color.white)
            .cornerRadius(25)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
            )
            .shadow(color: Color.black.opacity(0.03), radius: 5, x: 0, y: 2)
        }
        .padding()
        .background(Color.white.opacity(0.8))
        .background(.ultraThinMaterial)
    }
    
    private func toggleRecording() {
        if voiceManager.isRecording {
            voiceManager.stopRecording()
        } else {
            do {
                try voiceManager.startRecording()
            } catch {
                print("Error starting recording: \(error)")
            }
        }
    }
    
    private func sendMessage() {
        let trimmedText = inputText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedText.isEmpty else { return }

        // Stop recording if currently active
        if voiceManager.isRecording {
            voiceManager.stopRecording()
        }

        withAnimation {
            chatManager.sendMessage(trimmedText)
        }

        // Clear text immediately
        inputText = ""
        voiceManager.recognizedText = "" // Clear voice buffer

        // Dismiss keyboard
        isInputFocused = false
    }
}

