import SwiftUI
import Observation
import FoundationModels

@Observable
final class FoodAdvisorViewModel {
    var messages: [ChatMessage] = []
    var inputText: String = ""
    var selectedConditions: Set<HealthCondition> = []
    var isGeneratingResponse = false
    var showingConditionPicker = false
    var showingOnboarding = true
    
    // Private properties
    private var model = SystemLanguageModel.default
    private var session: LanguageModelSession?
    
    var modelAvailability: SystemLanguageModel.Availability {
        model.availability
    }
    
    func initializeSession() {
        let conditionsList = selectedConditions.map { $0.name }.joined(separator: ", ")
        
        let instruction = """
        You are a Smart Food Recommendation System for Health. Your role is to analyze food items and provide personalized recommendations based on the user's health conditions: \(conditionsList).
        
        For each food query, provide:
        1. Clear RECOMMENDED or AVOID recommendation
        2. Detailed explanation of why this food is good/bad for their specific conditions
        3. Which biomarkers will be improved or worsened (blood sugar, blood pressure, cholesterol, etc.)
        4. Alternative food suggestions if the item should be avoided
        
        Focus on evidence-based nutrition science and be specific about the relationship between the food and their health conditions. Always mention relevant biomarkers and provide practical alternatives.
        
        Format your response as:
        🟢 RECOMMENDED / 🔴 AVOID
        
        **Why:** [Detailed explanation]
        
        **Biomarkers affected:** [List relevant biomarkers]
        
        **Better alternatives:** [If avoiding, suggest alternatives]
        """
        
        session = LanguageModelSession(instructions: instruction)
    }
    
    func addWelcomeMessage() {
        let conditionsList = selectedConditions.map { "• \($0.name)" }.joined(separator: "\n")
        
        let welcomeMessage = """
        🌟 **Welcome to Smart Food Advisor**
        
        I'm here to provide personalized nutrition guidance based on your health profile:
        
        \(conditionsList)
        
        **How it works:**
        • Ask about any food item (e.g., "rice", "chicken", "banana")
        • Get personalized recommendations (RECOMMENDED/AVOID)
        • Understand impact on your biomarkers
        • Receive healthier alternatives when needed
        
        What food would you like me to analyze today?
        """
        
        messages.append(ChatMessage(content: welcomeMessage, isFromUser: false))
    }
    
    func addConditionUpdateMessage() {
        let conditionsList = selectedConditions.map { $0.name }.joined(separator: ", ")
        let updateMessage = "✅ **Health Profile Updated**\n\nYour conditions: \(conditionsList)\n\nI'll now provide recommendations tailored to these specific conditions."
        
        messages.append(ChatMessage(content: updateMessage, isFromUser: false, messageType: .healthConditionUpdate))
    }
    
    func sendMessage() {
        let userMessage = inputText.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !userMessage.isEmpty else { return }
        
        // Add user message
        messages.append(ChatMessage(content: userMessage, isFromUser: true))
        
        // Clear input
        inputText = ""
        
        // Generate AI response
        Task {
            await generateFoodRecommendation(for: userMessage)
        }
    }
    
    private func generateFoodRecommendation(for foodItem: String) async {
        guard let session = session else { return }
        
        isGeneratingResponse = true
        
        do {
            let query = "Analyze this food item for my health conditions: \(foodItem)"
            let stream = session.streamResponse(to: query)
            var finalResponse = ""
            
            // Collect the complete response without updating UI during streaming
            for try await streamData in stream {
                finalResponse = streamData.content
            }
            
            // Only update UI once with the final complete response
            let response = finalResponse
            await MainActor.run {
                self.messages.append(ChatMessage(content: response, isFromUser: false))
                self.isGeneratingResponse = false
            }
            
        } catch {
            let errorMessage = "I apologize, but I'm having trouble analyzing this food item right now. Please try again. Error: \(error.localizedDescription)"
            await MainActor.run {
                self.messages.append(ChatMessage(content: errorMessage, isFromUser: false))
                self.isGeneratingResponse = false
            }
        }
    }
    
    func clearChat() {
        messages.removeAll()
        addWelcomeMessage()
        initializeSession()
    }
    
    func toggleCondition(_ condition: HealthCondition) {
        if selectedConditions.contains(condition) {
            selectedConditions.remove(condition)
        } else {
            selectedConditions.insert(condition)
        }
    }
}

