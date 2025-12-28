import Foundation

struct SpecialistData {
    static let topics = [
        Topic(name: "Acne", iconName: "face.dashed"),
        Topic(name: "Eczema", iconName: "hand.raised"),
        Topic(name: "Psoriasis", iconName: "flame"),
        Topic(name: "Skin cancer", iconName: "sun.max.fill"),
        Topic(name: "Dermatitis", iconName: "hand.raised.slash")
    ]
    
    static let faqs = [
        FAQ(question: "How can I prevent acne breakouts?", answer: "Clean your face twice a day, avoid touching your face, and use non-comedogenic products."),
        FAQ(question: "What are the common causes of skin rashes?", answer: "Allergies, irritants, genetic factors, and certain diseases can cause skin rashes."),
        FAQ(question: "How can I protect my skin from sun damage?", answer: "Sun protection measures include wearing sunscreen with SPF 30 or higher, seeking shade, wearing protective clothing, including hats and sunglasses, and avoiding sun exposure during peak hours."),
        FAQ(question: "What are the signs of skin cancer?", answer: "Look for changes in moles, new growths, or sores that don't heal."),
        FAQ(question: "How can I treat dry skin?", answer: "Use gentle cleansers, moisturize regularly, and avoid hot showers.")
    ]
    
    static let specialists = [
        Specialist(name: "Ayurveda Specialist", iconName: "leaf", topics: topics, faqs: faqs),
        Specialist(name: "Cardiologist", iconName: "heart.fill", topics: topics, faqs: faqs),
        Specialist(name: "Dental", iconName: "mouth", topics: topics, faqs: faqs),
        Specialist(name: "Dermatologist", iconName: "face.smiling", topics: topics, faqs: faqs),
        Specialist(name: "Endocrinologist", iconName: "cross.case", topics: topics, faqs: faqs),
        Specialist(name: "Gastroenterologist", iconName: "pills", topics: topics, faqs: faqs),
        Specialist(name: "Gynecologist", iconName: "figure.stand.dress", topics: topics, faqs: faqs),
        Specialist(name: "Hematologist", iconName: "drop.fill", topics: topics, faqs: faqs),
        Specialist(name: "Immunologist", iconName: "shield.fill", topics: topics, faqs: faqs),
        Specialist(name: "Nephrologist", iconName: "ivfluid.bag", topics: topics, faqs: faqs),
        Specialist(name: "Neurologist", iconName: "brain", topics: topics, faqs: faqs),
        Specialist(name: "Oncologist", iconName: "bandage", topics: topics, faqs: faqs),
        Specialist(name: "Ophthalmologist", iconName: "eye", topics: topics, faqs: faqs),
        Specialist(name: "Orthopedist", iconName: "figure.walk", topics: topics, faqs: faqs),
        Specialist(name: "Pediatrician", iconName: "figure.child", topics: topics, faqs: faqs),
        Specialist(name: "Psychiatrist", iconName: "person.fill.questionmark", topics: topics, faqs: faqs)
    ]
}

