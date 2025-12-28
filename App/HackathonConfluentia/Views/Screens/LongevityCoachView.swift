import SwiftUI

struct LongevityCoachView: View {
    @State private var currentStep = 0
    @State private var profile = UserProfile()
    @State private var quizAnswers: [UUID: Int] = [:] // QuestionID -> OptionIndex
    
    // Steps:
    // 0: Basic Info
    // 1: Measurements
    // 2...11: Questions 1-10
    
    private let totalSteps = 2 + AssessmentData.questions.count
    
    var body: some View {
        ZStack {
            // Background is handled by individual views, but we can have a fallback
            Color(.systemBackground).ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Progress Bar (Hide on results screen)
                if currentStep < totalSteps {
                    ProgressBar(currentStep: currentStep + 1, totalSteps: totalSteps)
                        .padding(.top, 8)
                        .padding(.horizontal, 24)
                }
                
                // Content
                Group {
                    if currentStep == 0 {
                        BasicInfoView(
                            profile: $profile,
                            onContinue: nextStep,
                            onBack: { /* Dismiss or handle appropriately */ }
                        )
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                    } else if currentStep == 1 {
                        MeasurementsView(
                            profile: $profile,
                            onContinue: nextStep,
                            onBack: prevStep
                        )
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                    } else if currentStep >= 2 && currentStep < totalSteps {
                        let questionIndex = currentStep - 2
                        let question = AssessmentData.questions[questionIndex]
                        
                        QuestionView(
                            question: question,
                            questionIndex: questionIndex + 1,
                            totalQuestions: AssessmentData.questions.count,
                            selectedAnswerIndex: Binding(
                                get: { quizAnswers[question.id] },
                                set: { quizAnswers[question.id] = $0 }
                            ),
                            onContinue: nextStep,
                            onBack: prevStep
                        )
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                    } else {
                        // Results Screen
                        LongevityResultsView(profile: profile, quizAnswers: quizAnswers)
                            .transition(.opacity)
                    }
                }
                .animation(.spring(response: 0.5, dampingFraction: 0.8), value: currentStep)
            }
        }
        .navigationBarHidden(true)
    }
    
    private func nextStep() {
        if currentStep <= totalSteps {
            currentStep += 1
        }
    }
    
    private func prevStep() {
        if currentStep > 0 {
            currentStep -= 1
        }
    }
}

struct ProgressBar: View {
    let currentStep: Int
    let totalSteps: Int
    
    var progress: Double {
        Double(currentStep) / Double(totalSteps)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("Health Assessment")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                Text("\(Int(progress * 100))%")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.orange)
            }
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(.systemGray5))
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(
                            LinearGradient(
                                colors: [.orange, .red],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: geometry.size.width * progress, height: 8)
                        .animation(.spring(), value: progress)
                }
            }
            .frame(height: 8)
        }
    }
}
