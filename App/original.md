import SwiftUI
import FoundationModels

// MARK: - Main App

struct SmartFoodRecommendationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// MARK: - Health Condition Model
struct HealthCondition: Identifiable, Hashable, Equatable {
    let id = UUID()
    let name: String
    let category: String
    let description: String
    let icon: String
    let color: Color
    let gradientColors: [Color]
    
    var gradient: LinearGradient {
        LinearGradient(colors: gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    // Implement Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
    }
    
    // Implement Equatable
    static func == (lhs: HealthCondition, rhs: HealthCondition) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
    
    static let conditions = [
        HealthCondition(
            name: "Diabetes Type 2",
            category: "Metabolic",
            description: "Blood sugar management",
            icon: "drop.fill",
            color: .red,
            gradientColors: [.red, .pink]
        ),
        HealthCondition(
            name: "Hypertension",
            category: "Cardiovascular",
            description: "High blood pressure",
            icon: "heart.fill",
            color: .orange,
            gradientColors: [.orange, .red]
        ),
        HealthCondition(
            name: "Obesity",
            category: "Weight Management",
            description: "Weight reduction focus",
            icon: "figure.walk",
            color: .purple,
            gradientColors: [.purple, .blue]
        ),
        HealthCondition(
            name: "Thyroid Disorders",
            category: "Endocrine",
            description: "Thyroid hormone regulation",
            icon: "circle.fill",
            color: .teal,
            gradientColors: [.teal, .cyan]
        ),
        HealthCondition(
            name: "High Cholesterol",
            category: "Cardiovascular",
            description: "Cholesterol management",
            icon: "waveform.path.ecg",
            color: .indigo,
            gradientColors: [.indigo, .purple]
        ),
        HealthCondition(
            name: "PCOD/PCOS",
            category: "Hormonal",
            description: "Hormonal balance",
            icon: "leaf.fill",
            color: .mint,
            gradientColors: [.mint, .green]
        ),
        HealthCondition(
            name: "Kidney Disease",
            category: "Renal",
            description: "Kidney function support",
            icon: "pills.fill",
            color: .blue,
            gradientColors: [.blue, .cyan]
        ),
        HealthCondition(
            name: "Heart Disease",
            category: "Cardiovascular",
            description: "Heart health support",
            icon: "heart.text.square.fill",
            color: .pink,
            gradientColors: [.pink, .red]
        )
    ]
}

// MARK: - Food Item Model
struct FoodQuery: Identifiable {
    let id = UUID()
    let foodName: String
    let timestamp: Date
    let recommendation: FoodRecommendation?
    
    init(foodName: String) {
        self.foodName = foodName
        self.timestamp = Date()
        self.recommendation = nil
    }
}

struct FoodRecommendation {
    let isRecommended: Bool
    let explanation: String
    let biomarkers: [String]
    let alternatives: [String]?
}

// MARK: - Message Model
struct ChatMessage: Identifiable {
    let id = UUID()
    let content: String
    let isFromUser: Bool
    let timestamp: Date
    let messageType: MessageType
    
    enum MessageType {
        case text
        case foodRecommendation(FoodRecommendation)
        case healthConditionUpdate
    }
    
    init(content: String, isFromUser: Bool, messageType: MessageType = .text) {
        self.content = content
        self.isFromUser = isFromUser
        self.timestamp = Date()
        self.messageType = messageType
    }
}

// MARK: - Main Content View
struct ContentView: View {
    private var model = SystemLanguageModel.default
    @State private var messages: [ChatMessage] = []
    @State private var inputText: String = ""
    @State private var session: LanguageModelSession?
    @State private var selectedConditions: Set<HealthCondition> = []
    @State private var showingConditionPicker = false
    @State private var isGeneratingResponse = false
    @State private var showingOnboarding = true
    
    var body: some View {
        NavigationStack {
            switch model.availability {
            case .available:
                if showingOnboarding {
                    onboardingView
                } else {
                    mainView
                }
            case .unavailable(let reason):
                unavailableView(reason)
            }
        }
        .preferredColorScheme(.light)
    }
    
    private var onboardingView: some View {
        ZStack {
            // Gradient background
            LinearGradient(
                colors: [
                    Color(.systemBackground),
                    Color.green.opacity(0.05),
                    Color.blue.opacity(0.05)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 32) {
                    // Header with animated icon
                    VStack(spacing: 20) {
                        ZStack {
                            Circle()
                                .fill(
                                    LinearGradient(
                                        colors: [.green.opacity(0.2), .blue.opacity(0.2)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .frame(width: 120, height: 120)
                            
                            Image(systemName: "leaf.circle.fill")
                                .font(.system(size: 60, weight: .light))
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.green, .mint],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                        }
                        .shadow(color: .green.opacity(0.3), radius: 20, x: 0, y: 10)
                        
                        VStack(spacing: 12) {
                            Text("Smart Food Advisor")
                                .font(.system(size: 32, weight: .bold, design: .rounded))
                                .multilineTextAlignment(.center)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.primary, .secondary],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                            
                            Text("Get personalized nutrition recommendations tailored to your unique health profile")
                                .font(.system(size: 18, weight: .regular, design: .rounded))
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)
                                .lineSpacing(4)
                        }
                    }
                    .padding(.top, 20)
                    
                    // Health Conditions Selection
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Image(systemName: "heart.text.square.fill")
                                .foregroundColor(.pink)
                                .font(.title2)
                            
                            Text("Select Your Health Conditions")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                        }
                        
                        Text("Choose all conditions that apply to receive personalized recommendations")
                            .font(.system(size: 16, design: .rounded))
                            .foregroundColor(.secondary)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                            ForEach(HealthCondition.conditions) { condition in
                                ConditionCard(
                                    condition: condition,
                                    isSelected: selectedConditions.contains(condition)
                                ) {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                        if selectedConditions.contains(condition) {
                                            selectedConditions.remove(condition)
                                        } else {
                                            selectedConditions.insert(condition)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer(minLength: 40)
                    
                    // Continue Button
                    Button(action: {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                            initializeSession()
                            addWelcomeMessage()
                            showingOnboarding = false
                        }
                    }) {
                        HStack(spacing: 12) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.title3)
                            
                            Text("Start Food Analysis")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(
                            Group {
                                if selectedConditions.isEmpty {
                                    Color.gray
                                } else {
                                    LinearGradient(colors: [.green, .mint], startPoint: .leading, endPoint: .trailing)
                                }
                            }
                        )
                        .cornerRadius(28)
                        .shadow(
                            color: selectedConditions.isEmpty ? .clear : .green.opacity(0.4),
                            radius: 15,
                            x: 0,
                            y: 8
                        )
                    }
                    .disabled(selectedConditions.isEmpty)
                    .scaleEffect(selectedConditions.isEmpty ? 0.95 : 1.0)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7), value: selectedConditions.isEmpty)
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 32)
            }
        }
    }
    
    private var mainView: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [
                    Color(.systemBackground),
                    Color(.systemGray6).opacity(0.3)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header with selected conditions
                headerView
                
                // Chat messages
                chatMessagesView
                
                // Input area
                inputView
            }
        }
        .navigationTitle("Food Advisor")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    withAnimation(.spring()) {
                        showingOnboarding = true
                    }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.blue)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Menu {
                    Button(action: { showingConditionPicker = true }) {
                        HStack {
                            Image(systemName: "heart.text.square")
                            Text("Edit Health Conditions")
                        }
                    }
                    Button(action: clearChat) {
                        HStack {
                            Image(systemName: "trash")
                            Text("Clear Chat")
                        }
                    }
                    Button(action: hideKeyboard) {
                        HStack {
                            Image(systemName: "keyboard.chevron.compact.down")
                            Text("Hide Keyboard")
                        }
                    }
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .font(.title2)
                        .foregroundColor(.blue)
                }
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
        .sheet(isPresented: $showingConditionPicker) {
            ConditionPickerView(selectedConditions: $selectedConditions) {
                initializeSession()
                addConditionUpdateMessage()
            }
        }
    }
    
    private var headerView: some View {
        VStack(spacing: 12) {
            if !selectedConditions.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.blue)
                        Text("Your Health Profile")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            ForEach(Array(selectedConditions), id: \.id) { condition in
                                HStack(spacing: 6) {
                                    Image(systemName: condition.icon)
                                        .font(.system(size: 12, weight: .semibold))
                                    Text(condition.name)
                                        .font(.system(size: 13, weight: .medium, design: .rounded))
                                }
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(condition.color.opacity(0.15))
                                .foregroundColor(condition.color)
                                .cornerRadius(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(condition.color.opacity(0.3), lineWidth: 1)
                                )
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.ultraThinMaterial)
                        .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
                )
                .padding(.horizontal, 16)
            }
        }
    }
    
    private var chatMessagesView: some View {
        ScrollViewReader { proxy in
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 16) {
                    ForEach(messages) { message in
                        ChatBubbleView(message: message)
                            .id(message.id)
                    }
                    
                    if isGeneratingResponse {
                        TypingIndicatorView()
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            }
            .onChange(of: messages.count) { _ in
                if let lastMessage = messages.last {
                    withAnimation(.easeOut(duration: 0.5)) {
                        proxy.scrollTo(lastMessage.id, anchor: .bottom)
                    }
                }
            }
            .onTapGesture {
                hideKeyboard()
            }
        }
    }
    
    private var inputView: some View {
        VStack(spacing: 0) {
            // Divider with gradient
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [.clear, .gray.opacity(0.3), .clear],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(height: 1)
            
            VStack(spacing: 16) {
                // Quick food buttons
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        let commonFoods = [
                            ("🍚", "Rice"), ("🍗", "Chicken"), ("🍌", "Banana"),
                            ("🥬", "Spinach"), ("🥛", "Yogurt"), ("🥜", "Almonds"),
                            ("🐟", "Salmon"), ("🥣", "Oats")
                        ]
                        ForEach(commonFoods, id: \.1) { emoji, food in
                            Button(action: {
                                inputText = food
                                sendMessage()
                            }) {
                                HStack(spacing: 6) {
                                    Text(emoji)
                                        .font(.system(size: 16))
                                    Text(food)
                                        .font(.system(size: 14, weight: .medium, design: .rounded))
                                }
                                .padding(.horizontal, 14)
                                .padding(.vertical, 8)
                                .background(.ultraThinMaterial)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.gray.opacity(0.2), lineWidth: 1)
                                )
                            }
                            .foregroundColor(.primary)
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                // Input field
                HStack(spacing: 12) {
                    HStack(spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .font(.system(size: 16, weight: .medium))
                        
                        TextField("Enter food item (e.g., rice, chicken, banana)...", text: $inputText, axis: .vertical)
                            .lineLimit(1...3)
                            .font(.system(size: 16, design: .rounded))
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(.ultraThinMaterial)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(.gray.opacity(0.2), lineWidth: 1)
                    )
                    
                    Button(action: sendMessage) {
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundColor(inputText.isEmpty ? .gray : .green)
                    }
                    .disabled(inputText.isEmpty || isGeneratingResponse)
                    .scaleEffect(inputText.isEmpty ? 0.9 : 1.0)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7), value: inputText.isEmpty)
                }
                .padding(.horizontal, 16)
            }
            .padding(.vertical, 16)
            .background(.regularMaterial)
        }
    }
    
    private func unavailableView(_ reason: SystemLanguageModel.Availability.UnavailableReason) -> some View {
        ZStack {
            LinearGradient(
                colors: [Color(.systemBackground), Color(.systemGray6)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 24) {
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.system(size: 80, weight: .light))
                    .foregroundColor(.orange)
                    .shadow(color: .orange.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(spacing: 12) {
                    Text("AI Food Advisor Unavailable")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                    
                    Text(unavailableMessage(reason))
                        .font(.system(size: 16, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                }
            }
            .padding(.horizontal, 32)
        }
    }
    
    private func unavailableMessage(_ reason: SystemLanguageModel.Availability.UnavailableReason) -> String {
        switch reason {
        case .deviceNotEligible:
            return "This device doesn't support Apple Intelligence features required for food recommendations."
        case .appleIntelligenceNotEnabled:
            return "Apple Intelligence is not enabled. Please enable it in Settings to use food recommendations."
        case .modelNotReady:
            return "The AI model is downloading or temporarily unavailable. Please try again later."
        @unknown default:
            return "The food recommendation system is unavailable for an unknown reason."
        }
    }
    
    private func initializeSession() {
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
    
    private func addWelcomeMessage() {
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
    
    private func addConditionUpdateMessage() {
        let conditionsList = selectedConditions.map { $0.name }.joined(separator: ", ")
        let updateMessage = "✅ **Health Profile Updated**\n\nYour conditions: \(conditionsList)\n\nI'll now provide recommendations tailored to these specific conditions."
        
        messages.append(ChatMessage(content: updateMessage, isFromUser: false, messageType: .healthConditionUpdate))
    }
    
    private func sendMessage() {
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
            DispatchQueue.main.async {
                self.messages.append(ChatMessage(content: finalResponse, isFromUser: false))
            }
            
        } catch {
            let errorMessage = "I apologize, but I'm having trouble analyzing this food item right now. Please try again. Error: \(error.localizedDescription)"
            DispatchQueue.main.async {
                self.messages.append(ChatMessage(content: errorMessage, isFromUser: false))
            }
        }
        
        isGeneratingResponse = false
    }
    
    private func clearChat() {
        messages.removeAll()
        addWelcomeMessage()
        initializeSession()
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

// MARK: - Enhanced Condition Card View
struct ConditionCard: View {
    let condition: HealthCondition
    let isSelected: Bool
    let action: () -> Void
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withHapticFeedback {
                action()
            }
        }) {
            VStack(spacing: 12) {
                ZStack {
                    Circle()
                        .fill(isSelected ? AnyShapeStyle(condition.gradient) : AnyShapeStyle(condition.color.opacity(0.1)))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: condition.icon)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(isSelected ? .white : condition.color)
                }
                
                VStack(spacing: 4) {
                    Text(condition.name)
                        .font(.system(size: 13, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(isSelected ? .white : .primary)
                        .lineLimit(2)
                    
                    Text(condition.description)
                        .font(.system(size: 11, design: .rounded))
                        .foregroundColor(isSelected ? .white.opacity(0.9) : .secondary)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                }
            }
            .padding(16)
            .frame(maxWidth: .infinity, minHeight: 120)
            .background(
                Group {
                    if isSelected {
                        condition.gradient
                    } else {
                        Color.white.overlay(condition.color.opacity(0.05))
                    }
                }
            )
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(
                        isSelected ? condition.color.opacity(0.3) : .gray.opacity(0.2),
                        lineWidth: isSelected ? 2 : 1
                    )
            )
            .shadow(
                color: isSelected ? condition.color.opacity(0.3) : .black.opacity(0.05),
                radius: isSelected ? 8 : 4,
                x: 0,
                y: isSelected ? 4 : 2
            )
            .scaleEffect(isPressed ? 0.95 : 1.0)
        }
        .buttonStyle(PlainButtonStyle())
        .onLongPressGesture(minimumDuration: 0, maximumDistance: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = pressing
            }
        }, perform: {})
    }
    
    private func withHapticFeedback<T>(_ action: () -> T) -> T {
        let impact = UIImpactFeedbackGenerator(style: .light)
        impact.impactOccurred()
        return action()
    }
}

// MARK: - Enhanced Condition Picker View
struct ConditionPickerView: View {
    @Binding var selectedConditions: Set<HealthCondition>
    let onUpdate: () -> Void
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color(.systemBackground), Color(.systemGray6).opacity(0.3)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 24) {
                        // Header
                        VStack(spacing: 8) {
                            Image(systemName: "heart.text.square.fill")
                                .font(.system(size: 32))
                                .foregroundColor(.pink)
                            
                            Text("Update Your Health Profile")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                        }
                        .padding(.top, 8)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                            ForEach(HealthCondition.conditions) { condition in
                                ConditionCard(
                                    condition: condition,
                                    isSelected: selectedConditions.contains(condition)
                                ) {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                        if selectedConditions.contains(condition) {
                                            selectedConditions.remove(condition)
                                        } else {
                                            selectedConditions.insert(condition)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 32)
                }
            }
            .navigationTitle("Health Conditions")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.blue)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        onUpdate()
                        dismiss()
                    }) {
                        Text("Update")
                            .fontWeight(.semibold)
                    }
                    .disabled(selectedConditions.isEmpty)
                    .foregroundColor(selectedConditions.isEmpty ? .gray : .blue)
                }
            }
        }
    }
}

// MARK: - Enhanced Chat Bubble View
struct ChatBubbleView: View {
    let message: ChatMessage
    @State private var animateIn = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            if message.isFromUser {
                Spacer()
                
                VStack(alignment: .trailing, spacing: 6) {
                    HStack {
                        Text(message.content)
                            .font(.system(size: 16, design: .rounded))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .background(
                                LinearGradient(
                                    colors: [.blue, .blue.opacity(0.8)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(20, corners: [.topLeft, .topRight, .bottomLeft])
                            .shadow(color: .blue.opacity(0.3), radius: 8, x: 0, y: 4)
                    }
                    
                    Text(formatTime(message.timestamp))
                        .font(.system(size: 11, design: .rounded))
                        .foregroundColor(.secondary)
                        .padding(.trailing, 4)
                }
            } else {
                VStack(alignment: .leading, spacing: 6) {
                    HStack(alignment: .top, spacing: 8) {
                        // AI Avatar
                        ZStack {
                            Circle()
                                .fill(
                                    LinearGradient(
                                        colors: [getIconColor().opacity(0.2), getIconColor().opacity(0.1)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .frame(width: 32, height: 32)
                            
                            Image(systemName: getIconForMessage())
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(getIconColor())
                        }
                        .padding(.top, 2)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(message.content)
                                .font(.system(size: 16, design: .rounded))
                                .padding(.horizontal, 16)
                                .padding(.vertical, 12)
                                .background(getBackgroundGradient())
                                .foregroundColor(.primary)
                                .cornerRadius(20, corners: [.topLeft, .topRight, .bottomRight])
                                .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
                        }
                        
                        Spacer()
                    }
                    
                    Text(formatTime(message.timestamp))
                        .font(.system(size: 11, design: .rounded))
                        .foregroundColor(.secondary)
                        .padding(.leading, 40)
                }
            }
        }
        .opacity(animateIn ? 1 : 0)
        .offset(y: animateIn ? 0 : 20)
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8).delay(0.1)) {
                animateIn = true
            }
        }
    }
    
    private func getIconForMessage() -> String {
        switch message.messageType {
        case .healthConditionUpdate:
            return "heart.text.square.fill"
        case .foodRecommendation:
            return "leaf.circle.fill"
        case .text:
            if message.content.contains("🟢") {
                return "checkmark.circle.fill"
            } else if message.content.contains("🔴") {
                return "xmark.circle.fill"
            } else {
                return "brain.head.profile"
            }
        }
    }
    
    private func getIconColor() -> Color {
        if message.content.contains("🟢") {
            return .green
        } else if message.content.contains("🔴") {
            return .red
        } else {
            return .blue
        }
    }
    
    private func getBackgroundGradient() -> LinearGradient {
        if message.content.contains("🟢") {
            return LinearGradient(
                colors: [.green.opacity(0.1), .mint.opacity(0.05)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        } else if message.content.contains("🔴") {
            return LinearGradient(
                colors: [.red.opacity(0.1), .pink.opacity(0.05)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        } else {
            return LinearGradient(
                colors: [.blue.opacity(0.05), .cyan.opacity(0.02)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
    }
    
    private func formatTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

// MARK: - Enhanced Typing Indicator
struct TypingIndicatorView: View {
    @State private var animationPhase = 0
    @State private var pulseAnimation = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            // AI Avatar with pulse animation
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.blue.opacity(0.2), .cyan.opacity(0.1)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 32, height: 32)
                    .scaleEffect(pulseAnimation ? 1.1 : 1.0)
                    .animation(.easeInOut(duration: 1.0).repeatForever(), value: pulseAnimation)
                
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.blue)
            }
            .padding(.top, 2)
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 8) {
                    // Animated typing dots
                    HStack(spacing: 4) {
                        ForEach(0..<3) { index in
                            Circle()
                                .fill(.gray)
                                .frame(width: 8, height: 8)
                                .scaleEffect(animationPhase == index ? 1.3 : 0.7)
                                .opacity(animationPhase == index ? 1.0 : 0.5)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(
                        LinearGradient(
                            colors: [Color(.systemGray6), Color(.systemGray5).opacity(0.5)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(20, corners: [.topLeft, .topRight, .bottomRight])
                    .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
                    
                    Spacer()
                }
                
                Text("AI is thinking...")
                    .font(.system(size: 11, design: .rounded))
                    .foregroundColor(.secondary)
                    .padding(.leading, 16)
                    .opacity(0.7)
            }
        }
        .onAppear {
            pulseAnimation = true
            
            // Animate typing dots
            Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 0.3)) {
                    animationPhase = (animationPhase + 1) % 3
                }
            }
        }
    }
}

// MARK: - View Extensions
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

// MARK: - Custom Button Styles
struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.96 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}