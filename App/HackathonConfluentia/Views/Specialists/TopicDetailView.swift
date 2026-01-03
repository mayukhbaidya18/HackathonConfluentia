import SwiftUI

struct TopicDetailView: View {
    let topic: Topic
    @Environment(\.dismiss) private var dismiss

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

                Text(topic.name)
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
                if let content = topic.content {
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

                        // Overview Section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Content")
                                .font(.headline)
                                .foregroundColor(.orange)

                            Text(content.overview)
                                .font(.body)
                                .foregroundColor(.primary)
                                .lineSpacing(4)
                        }

                        // Causes Section
                        if !content.causes.isEmpty {
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Causes of \(topic.name)")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)

                                Text(content.causesIntro)
                                    .font(.body)
                                    .foregroundColor(.primary)
                                    .lineSpacing(4)

                                VStack(alignment: .leading, spacing: 12) {
                                    ForEach(content.causes, id: \.self) { cause in
                                        BulletPointText(text: cause)
                                    }
                                }
                            }
                        }

                        // Symptoms Section
                        if !content.symptoms.isEmpty {
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Symptoms of \(topic.name)")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)

                                Text(content.symptomsIntro)
                                    .font(.body)
                                    .foregroundColor(.primary)
                                    .lineSpacing(4)

                                VStack(alignment: .leading, spacing: 12) {
                                    ForEach(content.symptoms, id: \.self) { symptom in
                                        BulletPointText(text: symptom)
                                    }
                                }
                            }
                        }

                        // Diagnosis Section
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Diagnosis of \(topic.name)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)

                            Text(content.diagnosis)
                                .font(.body)
                                .foregroundColor(.primary)
                                .lineSpacing(4)
                        }

                        // Complications Section
                        if let complications = content.complications, !complications.isEmpty {
                            VStack(alignment: .leading, spacing: 16) {
                                Text("Complications")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.primary)

                                if let complicationsIntro = content.complicationsIntro {
                                    Text(complicationsIntro)
                                        .font(.body)
                                        .foregroundColor(.primary)
                                        .lineSpacing(4)
                                }

                                VStack(alignment: .leading, spacing: 12) {
                                    ForEach(complications, id: \.self) { complication in
                                        BulletPointText(text: complication)
                                    }
                                }
                            }
                        }

                        Spacer(minLength: 40)
                    }
                    .padding()
                } else {
                    // Empty state when no content is available
                    VStack(spacing: 16) {
                        Spacer()
                        Image(systemName: "doc.text")
                            .font(.system(size: 60))
                            .foregroundColor(.gray.opacity(0.3))

                        Text("Content Coming Soon")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)

                        Text("Detailed information about \(topic.name) will be available soon.")
                            .font(.body)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)

                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        .background(Color.white)
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
    TopicDetailView(topic: Topic(name: "Hypertension", iconName: "heart.fill", content: nil))
}

