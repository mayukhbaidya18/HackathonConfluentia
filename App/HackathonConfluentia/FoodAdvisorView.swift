import SwiftUI
import FoundationModels

// MARK: - Main Content View
struct FoodAdvisorView: View {
    @State private var viewModel = FoodAdvisorViewModel()
    @FocusState private var isInputFocused: Bool
    @State private var voiceManager = VoiceInputManager()

    var body: some View {
        NavigationStack {
            switch viewModel.modelAvailability {
            case .available:
                if viewModel.showingOnboarding {
                    OnboardingView(viewModel: viewModel)
                } else {
                    mainView
                }
            case .unavailable(let reason):
                unavailableView(reason)
            }
        }
        .preferredColorScheme(.light)
    }
    
    private var mainView: some View {
        VStack(spacing: 0) {
            // Header
            headerView
            
            // Message Area
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 16) {
                        Spacer().frame(height: 20)
                        
                        ForEach(viewModel.messages) { message in
                            ChatBubbleView(message: message)
                                .id(message.id)
                        }
                        
                        if viewModel.isGeneratingResponse {
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
                .onChange(of: viewModel.messages.count) { _ in
                    scrollToBottom(proxy)
                }
                .onChange(of: viewModel.isGeneratingResponse) { _ in
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
        .background(Color(red: 1.0, green: 0.98, blue: 0.96)) // Soft peach/cream background matching Isabella
        .navigationTitle("Food Advisor")
        .navigationBarHidden(true) // Hide default nav bar to use custom header
        .sheet(isPresented: $viewModel.showingConditionPicker) {
            ConditionPickerView(selectedConditions: $viewModel.selectedConditions) {
                viewModel.initializeSession()
                viewModel.addConditionUpdateMessage()
            }
        }
        .onChange(of: voiceManager.recognizedText) { newText in
            if !newText.isEmpty {
                viewModel.inputText = newText
            }
        }
    }
    
    private func scrollToBottom(_ proxy: ScrollViewProxy) {
        if let lastMessage = viewModel.messages.last {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                proxy.scrollTo(lastMessage.id, anchor: .bottom)
            }
        }
    }
    
    private var headerView: some View {
        HStack {
            Button(action: {
                withAnimation {
                    viewModel.showingOnboarding = true
                }
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.primary)
            }
            
            // Profile Image
            ZStack {
                Circle()
                    .stroke(Color.orange.opacity(0.3), lineWidth: 2)
                    .frame(width: 44, height: 44)

                Text("🧑‍⚕️")
                    .font(.system(size: 28))

                // Online Indicator
                Circle()
                    .fill(Color.green)
                    .frame(width: 10, height: 10)
                    .background(Circle().fill(Color.white).frame(width: 14, height: 14))
                    .offset(x: 14, y: 14)
            }
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Dr. Kea")
                    .font(.headline)
                Text("Food Advisor")
                    .font(.caption)
                    .foregroundColor(.orange)
            }
            
            Spacer()
            
            // Condition Picker Button
            Button(action: { viewModel.showingConditionPicker = true }) {
                Image(systemName: "heart.text.square")
                    .font(.title2)
                    .foregroundColor(.orange)
                    .padding(8)
                    .background(Color.orange.opacity(0.1))
                    .clipShape(Circle())
            }
            
            // Clear Chat Button
            Button(action: viewModel.clearChat) {
                Image(systemName: "trash")
                    .font(.system(size: 16))
                    .padding(8)
                    .foregroundColor(.secondary)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                    )
            }
        }
        .padding()
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.02), radius: 10, x: 0, y: 5)
    }
    
    private var inputArea: some View {
        VStack(spacing: 0) {
            // Quick Food Buttons (Optional, can keep or remove, keeping for utility but styling)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    let commonFoods = [
                        ("🍚", "Rice"), ("🍗", "Chicken"), ("🍌", "Banana"),
                        ("🥬", "Spinach"), ("🥛", "Yogurt"), ("🥜", "Almonds"),
                        ("🐟", "Salmon"), ("🥣", "Oats")
                    ]
                    ForEach(commonFoods, id: \.1) { emoji, food in
                        Button(action: {
                            viewModel.inputText = food
                            viewModel.sendMessage()
                        }) {
                            HStack(spacing: 6) {
                                Text(emoji)
                                    .font(.system(size: 16))
                                Text(food)
                                    .font(.system(size: 14, weight: .medium, design: .rounded))
                            }
                            .padding(.horizontal, 14)
                            .padding(.vertical, 8)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
                        }
                        .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 12)
            }
            
            HStack(spacing: 12) {
                // Microphone button with voice input
                Button(action: toggleRecording) {
                    Image(systemName: voiceManager.isRecording ? "stop.circle.fill" : "mic.circle.fill")
                        .font(.system(size: 40))
                        .foregroundColor(voiceManager.isRecording ? .red : .orange)
                        .shadow(color: .orange.opacity(0.3), radius: 5, x: 0, y: 2)
                        .scaleEffect(voiceManager.isRecording ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 0.2), value: voiceManager.isRecording)
                }
                
                HStack {
                    TextField("Ask Dr. Kea about food...", text: $viewModel.inputText, axis: .vertical)
                        .focused($isInputFocused)
                        .lineLimit(1...5)

                    Button(action: sendMessageWithVoiceCheck) {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 20))
                            .foregroundColor(viewModel.inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? .gray.opacity(0.5) : .white)
                            .padding(8)
                            .background(viewModel.inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? Color.gray.opacity(0.2) : Color.orange)
                            .clipShape(Circle())
                    }
                    .disabled(viewModel.inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
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
            .padding(.horizontal)
            .padding(.bottom)
        }
        .background(Color(red: 1.0, green: 0.98, blue: 0.96).opacity(0.9))
    }
    
    private func unavailableView(_ reason: SystemLanguageModel.Availability.UnavailableReason) -> some View {
        ZStack {
            Color(red: 1.0, green: 0.98, blue: 0.96).ignoresSafeArea()
            
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
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

// MARK: - Preview
#Preview {
    FoodAdvisorView()
}

// MARK: - Voice Input Functions
extension FoodAdvisorView {
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

    private func sendMessageWithVoiceCheck() {
        // Stop recording if currently active
        if voiceManager.isRecording {
            voiceManager.stopRecording()
        }

        // Send the message
        viewModel.sendMessage()

        // Clear text immediately
        voiceManager.recognizedText = "" // Clear voice buffer
        viewModel.inputText = "" // Explicitly clear input text

        // Dismiss keyboard
        isInputFocused = false
    }
}
