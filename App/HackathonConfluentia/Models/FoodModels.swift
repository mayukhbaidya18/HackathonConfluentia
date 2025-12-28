import Foundation

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


