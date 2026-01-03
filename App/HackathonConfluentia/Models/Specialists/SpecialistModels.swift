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
    let content: TopicContent?
}

struct TopicContent: Hashable {
    let overview: String
    let causesIntro: String
    let causes: [String]
    let symptomsIntro: String
    let symptoms: [String]
    let diagnosis: String
    let complicationsIntro: String?
    let complications: [String]?
}

struct FAQ: Identifiable, Hashable {
    let id = UUID()
    let question: String
    let answer: String
}

