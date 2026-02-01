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
    let images: [String]?

    init(overview: String, causesIntro: String, causes: [String], symptomsIntro: String, symptoms: [String], diagnosis: String, complicationsIntro: String? = nil, complications: [String]? = nil, images: [String]? = nil) {
        self.overview = overview
        self.causesIntro = causesIntro
        self.causes = causes
        self.symptomsIntro = symptomsIntro
        self.symptoms = symptoms
        self.diagnosis = diagnosis
        self.complicationsIntro = complicationsIntro
        self.complications = complications
        self.images = images
    }
}

struct FAQ: Identifiable, Hashable {
    let id = UUID()
    let question: String
    let answer: String
}

