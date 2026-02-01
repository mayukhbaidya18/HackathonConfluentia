import Foundation
import SwiftUI

struct AssessmentData {
    static let questions: [QuizQuestion] = [
        QuizQuestion(
            text: "How many hours do you sleep on average?",
            subtitle: "Quality sleep is crucial for brain health",
            options: [
                "Very Short - 4-5 hours (Not enough)",
                "Short - 5-6 hours (Below recommended)",
                "Average - 6-7 hours (Getting close)",
                "Optimal - 7-8 hours (Perfect!)",
                "Long - 8+ hours (More than most need)"
            ]
        ),
        QuizQuestion(
            text: "How many servings of vegetables do you eat daily?",
            subtitle: "Vegetables provide essential vitamins and minerals",
            options: [
                "None - I rarely eat vegetables",
                "Low - 1-2 servings per day",
                "Moderate - 3-4 servings per day",
                "Good - 5-6 servings per day",
                "Optimal - 7+ servings (Plant powered!)"
            ]
        ),
        QuizQuestion(
            text: "How often do you exercise?",
            subtitle: "Regular physical activity keeps your body strong",
            options: [
                "Sedentary - Rarely or never",
                "Light - 1-2 times a week",
                "Moderate - 3-4 times a week",
                "Active - 5-6 times a week",
                "Athlete - Every day (Intense training)"
            ]
        ),
        QuizQuestion(
            text: "How would you rate your daily stress levels?",
            subtitle: "Managing stress is key to mental wellbeing",
            options: [
                "Very High - Constantly overwhelmed",
                "High - Frequently stressed",
                "Moderate - Occasional stress",
                "Low - Generally calm",
                "Minimal - Very relaxed lifestyle"
            ]
        ),
        QuizQuestion(
            text: "How much water do you drink daily?",
            subtitle: "Staying hydrated supports all bodily functions",
            options: [
                "Very Low - Less than 2 glasses",
                "Low - 3-4 glasses",
                "Moderate - 5-6 glasses",
                "Good - 7-8 glasses",
                "Optimal - 8+ glasses (Well hydrated)"
            ]
        ),
        QuizQuestion(
            text: "Do you smoke or use tobacco products?",
            subtitle: "Smoking significantly impacts overall health",
            options: [
                "Yes - Frequently",
                "Yes - Occasionally",
                "Used to - Quit recently",
                "Used to - Quit long ago",
                "No - Never smoked"
            ]
        ),
        QuizQuestion(
            text: "How often do you consume alcohol?",
            subtitle: "Excessive alcohol can harm your health",
            options: [
                "Daily - 2+ drinks per day",
                "Frequent - 3-4 times a week",
                "Moderate - 1-2 times a week",
                "Occasional - Once a month or less",
                "Never - I don't drink alcohol"
            ]
        ),
        QuizQuestion(
            text: "How often do you engage in social activities?",
            subtitle: "Social connections are vital for emotional health",
            options: [
                "Rarely - Mostly isolated",
                "Occasionally - Once a month",
                "Sometimes - Every couple of weeks",
                "Regularly - Once a week",
                "Frequently - Multiple times a week"
            ]
        ),
        QuizQuestion(
            text: "How often do you have a balanced diet in a week?",
            subtitle: "A balanced diet includes proteins, carbs, vitamins, and fats",
            options: [
                "Rarely - Mostly processed or junk food",
                "Sometimes - A few balanced meals per week",
                "Often - Most days are balanced",
                "Very Often - Almost every day is balanced",
                "Always - Every meal is nutritionally complete"
            ]
        ),
        QuizQuestion(
            text: "How would you rate your overall happiness?",
            subtitle: "Emotional wellbeing affects physical health",
            options: [
                "Very Low - Often unhappy",
                "Low - Occasionally unhappy",
                "Neutral - Neither happy nor unhappy",
                "High - Generally happy",
                "Very High - Joyful and content"
            ]
        )
    ]

    // MARK: - Scoring Configuration

    static let scoringConfigurations: [QuestionScoring] = [
        // Question 1: Sleep (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 0,
            metric: .sleep,
            weights: [0, 25, 50, 100, 75], // Optimal (7-8 hrs) is best, 8+ is slightly less optimal
            isReverseScored: false
        ),

        // Question 2: Nutrition (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 1,
            metric: .nutrition,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 3: Exercise (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 2,
            metric: .physicalActivity,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 4: Stress (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 3,
            metric: .stress,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 5: Hydration (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 4,
            metric: .hydration,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 6: Smoking (0 = worst, 4 = best) - Never smoked is best
        QuestionScoring(
            questionIndex: 5,
            metric: .substanceUse,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 7: Alcohol (0 = worst, 4 = best) - Never is best
        QuestionScoring(
            questionIndex: 6,
            metric: .substanceUse,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 8: Social activities (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 7,
            metric: .socialHealth,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 9: Balanced diet (0 = worst, 4 = best) - More balanced meals is better
        QuestionScoring(
            questionIndex: 8,
            metric: .nutrition,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        ),

        // Question 10: Happiness (0 = worst, 4 = best)
        QuestionScoring(
            questionIndex: 9,
            metric: .mentalWellbeing,
            weights: [0, 25, 50, 75, 100],
            isReverseScored: false
        )
    ]
}

// MARK: - Scoring Models

struct QuestionScoring {
    let questionIndex: Int
    let metric: HealthMetricType
    let weights: [Int] // Score for each option index (0-4)
    let isReverseScored: Bool // If true, lower index = better score
}

enum HealthMetricType {
    case sleep
    case nutrition
    case physicalActivity
    case stress
    case hydration
    case substanceUse
    case socialHealth
    case sedentaryBehavior
    case mentalWellbeing

    var displayName: String {
        switch self {
        case .sleep: return "Sleep Quality"
        case .nutrition: return "Nutrition"
        case .physicalActivity: return "Physical Activity"
        case .stress: return "Stress Management"
        case .hydration: return "Hydration"
        case .substanceUse: return "Substance Use"
        case .socialHealth: return "Social Health"
        case .sedentaryBehavior: return "Sedentary Behavior"
        case .mentalWellbeing: return "Mental Wellbeing"
        }
    }

    var icon: String {
        switch self {
        case .sleep: return "clock.fill"
        case .nutrition: return "apple.logo"
        case .physicalActivity: return "waveform.path.ecg"
        case .stress: return "bolt.fill"
        case .hydration: return "drop.fill"
        case .substanceUse: return "exclamationmark.triangle.fill"
        case .socialHealth: return "person.2.fill"
        case .sedentaryBehavior: return "chair.fill"
        case .mentalWellbeing: return "brain.head.profile"
        }
    }

    var color: Color {
        switch self {
        case .sleep: return .green
        case .nutrition: return .yellow
        case .physicalActivity: return .orange
        case .stress: return .red
        case .hydration: return .blue
        case .substanceUse: return .purple
        case .socialHealth: return .cyan
        case .sedentaryBehavior: return .indigo
        case .mentalWellbeing: return .pink
        }
    }
}

// Helper for Color
import SwiftUI
extension Color {
    static func fromHex(_ hex: String) -> Color {
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

        return Color(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
