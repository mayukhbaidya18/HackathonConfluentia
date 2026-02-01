import Foundation

// MARK: - User Profile Model
struct UserProfile: Codable, Equatable {
    var name: String = ""
    var age: Int?
    var gender: Gender?
    var height: Double = 170.0 // Default 170 cm
    var weight: Double = 70.0  // Default 70 kg
}

enum Gender: String, CaseIterable, Codable, Identifiable {
    case male = "Male"
    case female = "Female"
    case other = "Other"
    
    var id: String { self.rawValue }
}

// MARK: - Quiz Models
struct QuizQuestion: Identifiable {
    let id = UUID()
    let text: String
    let subtitle: String
    let options: [String]
}

struct QuizAnswer: Codable, Identifiable {
    let id = UUID()
    let questionId: UUID
    let selectedOptionIndex: Int
    let selectedOptionText: String
}


