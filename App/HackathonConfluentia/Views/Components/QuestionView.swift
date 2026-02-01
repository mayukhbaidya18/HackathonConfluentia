import SwiftUI

struct QuestionView: View {
    let question: QuizQuestion
    let questionIndex: Int
    let totalQuestions: Int
    @Binding var selectedAnswerIndex: Int?
    let onContinue: () -> Void
    let onBack: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            // Gradient Header Card
            gradientHeaderCard
            
            // Options List
            optionsList
            
            // Navigation Buttons
            navigationButtons
        }
    }
    
    private var gradientHeaderCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Badge
            HStack(spacing: 8) {
                Image(systemName: "moon.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                
                Text("Question \(questionIndex) of \(totalQuestions)")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(Color.white.opacity(0.2))
            .cornerRadius(20)
            
            Text(question.text)
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(4)

            Text(question.subtitle)
                .font(.system(size: 16))
                .foregroundColor(.white.opacity(0.9))
        }
        .padding(24)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(
                colors: [Color(hex: "6366F1"), Color(hex: "A855F7")], // Indigo to Purple gradient
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(24)
        .padding(24)
        .shadow(color: Color(hex: "6366F1").opacity(0.3), radius: 20, x: 0, y: 10)
    }
    
    private var optionsList: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(0..<question.options.count, id: \.self) { index in
                    Button(action: {
                        let generator = UIImpactFeedbackGenerator(style: .medium)
                        generator.impactOccurred()
                        withAnimation(.spring(response: 0.3)) {
                            selectedAnswerIndex = index
                        }
                    }) {
                        HStack {
                            Text(question.options[index])
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.primary)
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                            
                            if selectedAnswerIndex == index {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(Color(hex: "6366F1"))
                                    .font(.title3)
                            }
                        }
                        .padding()
                        .background(
                            selectedAnswerIndex == index ? Color(hex: "6366F1").opacity(0.1) : Color(.systemGray6).opacity(0.3)
                        )
                        .background(Color.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(
                                    selectedAnswerIndex == index ? Color(hex: "6366F1") : Color.clear,
                                    lineWidth: 2
                                )
                        )
                        .shadow(color: Color.black.opacity(0.02), radius: 5, x: 0, y: 2)
                    }
                    .buttonStyle(ScaleButtonStyle())
                }
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
        }
    }
    
    private var navigationButtons: some View {
        VStack {
            HStack(spacing: 16) {
                Button(action: onBack) {
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Back")
                    }
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(16)
                }
                
                Button(action: onContinue) {
                    HStack {
                        Text("Next")
                        Image(systemName: "arrow.right")
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(selectedAnswerIndex != nil ? Color(hex: "6366F1") : Color.gray)
                    .cornerRadius(16)
                    .shadow(color: selectedAnswerIndex != nil ? Color(hex: "6366F1").opacity(0.3) : .clear, radius: 10, x: 0, y: 5)
                }
                .disabled(selectedAnswerIndex == nil)
            }
            .padding(24)
        }
        .background(Color(.systemBackground))
    }
}

// Helper for hex colors
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
