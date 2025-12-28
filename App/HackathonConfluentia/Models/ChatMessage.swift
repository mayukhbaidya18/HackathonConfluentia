import Foundation

// MARK: - Message Model
struct ChatMessage: Identifiable {
    let id: UUID
    let content: String
    let isFromUser: Bool
    let timestamp: Date
    let messageType: MessageType
    
    enum MessageType {
        case text
        case foodRecommendation(FoodRecommendation) // Ensure FoodRecommendation is available or remove if not used in this context
        case healthConditionUpdate
    }
    
    init(id: UUID = UUID(), content: String, isFromUser: Bool, timestamp: Date = Date(), messageType: MessageType = .text) {
        self.id = id
        self.content = content
        self.isFromUser = isFromUser
        self.timestamp = timestamp
        self.messageType = messageType
    }
}
