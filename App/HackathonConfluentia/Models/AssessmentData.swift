import Foundation

struct AssessmentData {
    static let questions: [QuizQuestion] = [
        QuizQuestion(
            text: "How many hours do you sleep on average?",
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
            options: [
                "Rarely - Mostly isolated",
                "Occasionally - Once a month",
                "Sometimes - Every couple of weeks",
                "Regularly - Once a week",
                "Frequently - Multiple times a week"
            ]
        ),
        QuizQuestion(
            text: "How much time do you spend sitting daily?",
            options: [
                "Very High - 10+ hours",
                "High - 8-10 hours",
                "Moderate - 6-8 hours",
                "Low - 4-6 hours",
                "Minimal - Less than 4 hours"
            ]
        ),
        QuizQuestion(
            text: "How would you rate your overall happiness?",
            options: [
                "Very Low - Often unhappy",
                "Low - Occasionally unhappy",
                "Neutral - Neither happy nor unhappy",
                "High - Generally happy",
                "Very High - Joyful and content"
            ]
        )
    ]
}


