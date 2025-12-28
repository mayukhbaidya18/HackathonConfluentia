import SwiftUI

struct TopicDetailView: View {
    let topic: Topic
    @Environment(\.dismiss) private var dismiss
    
    // Placeholder data for the detail view
    let placeholderText = """
    Hypertension, or high blood pressure, is a condition where the force of blood against artery walls is consistently too high. It can lead to serious health issues like heart disease and stroke. Regular monitoring and management are essential. For personalized advice, consult Dr. Jivi, our in-house health assistant.
    """
    
    let causes = [
        "Genetics: Family history can play a significant role in the development of hypertension.",
        "Obesity: Being overweight or obese can increase the risk of developing hypertension.",
        "Physical Inactivity: A sedentary lifestyle can contribute to the development of hypertension.",
        "Sodium Intake: Consuming high amounts of sodium can increase blood pressure.",
        "Stress: Chronic stress can contribute to the development of hypertension.",
        "Sleep Apnea: This condition can increase the risk of developing hypertension.",
        "Kidney Disease: Certain kidney diseases can cause hypertension.",
        "Adrenal Gland Tumors: Tumors on the adrenal gland can cause hypertension."
    ]
    
    let symptoms = [
        "Headaches: Frequent or severe headaches can be a symptom of hypertension.",
        "Dizziness: Dizziness or lightheadedness can occur due to high blood pressure.",
        "Nosebleeds: Frequent nosebleeds can be a symptom of hypertension.",
        "Fatigue: Feeling tired or weak can be a symptom of hypertension.",
        "Vision Changes: Blurred vision or double vision can occur due to high blood pressure."
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // Custom Navigation Bar
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                        .frame(width: 40, height: 40)
                        .background(Color(UIColor.systemGray6))
                        .clipShape(Circle())
                }
                
                Spacer()
                
                Text(topic.name) // Use topic name but content is placeholder
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                // Invisible button to balance the header
                Color.clear
                    .frame(width: 40, height: 40)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color.white)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Images Section (Placeholder)
                    HStack(spacing: 12) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 180)
                            .overlay(Text("Image 1").foregroundColor(.gray))
                        
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 180)
                            .overlay(Text("Image 2").foregroundColor(.gray))
                    }
                    
                    Text(placeholderText)
                        .font(.body)
                        .foregroundColor(.primary)
                        .lineSpacing(4)
                    
                    // Content Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Content")
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                        Text("Causes of Hypertension")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Hypertension, also known as high blood pressure, can be caused by a variety of factors. These include:")
                            .font(.body)
                            .foregroundColor(.primary)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(causes, id: \.self) { cause in
                                BulletPointText(text: cause)
                            }
                        }
                    }
                    
                    // Symptoms Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Symptoms of Hypertension")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("Hypertension often does not exhibit noticeable symptoms, but some people may experience:")
                            .font(.body)
                            .foregroundColor(.primary)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(symptoms, id: \.self) { symptom in
                                BulletPointText(text: symptom)
                            }
                        }
                    }
                    
                     // Diagnosis Section (Partial placeholder matching screenshot)
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Diagnosis of Hypertension")
                             .font(.title3)
                             .fontWeight(.bold)
                             .foregroundColor(.primary)
                        
                        Text("Hypertension is typically diagnosed using a blood pressure test. The test measures the pressure in the arteries as the heart beats. A blood pressure reading of 140/90 mmHg or higher is considered hypertensive.")
                            .font(.body)
                            .foregroundColor(.primary)
                            .lineSpacing(4)
                    }
                    
                    Spacer(minLength: 40)
                }
                .padding()
            }
        }
        .background(Color.white) // Match background
        .navigationBarHidden(true)
    }
}

struct BulletPointText: View {
    let text: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            Text("•")
                .font(.body)
                .fontWeight(.bold)
            Text(parseBoldText(text))
                .font(.body)
                .lineSpacing(4)
        }
    }
    
    // Helper to bold the first part before the colon
    func parseBoldText(_ text: String) -> AttributedString {
        var attributedString = AttributedString(text)
        
        if let range = attributedString.range(of: ":") {
            // Find the range from start up to and including the colon
            let boldRange = attributedString.startIndex..<range.upperBound
            attributedString[boldRange].font = .body.bold()
        }
        
        return attributedString
    }
}

#Preview {
    TopicDetailView(topic: Topic(name: "Hypertension", iconName: "heart.fill"))
}

