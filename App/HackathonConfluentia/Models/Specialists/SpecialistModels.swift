import Foundation

struct Specialist: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let iconName: String
    let topics: [Topic]
    let faqs: [FAQ]
}

struct Topic: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let iconName: String
}

struct FAQ: Identifiable, Hashable {
    let id = UUID()
    let question: String
    let answer: String
}

