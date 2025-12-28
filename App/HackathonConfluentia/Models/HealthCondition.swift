import SwiftUI

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


