import SwiftUI

struct SpecialistDetailView: View {
    let specialist: Specialist
    @Environment(\.dismiss) private var dismiss
    
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
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
                
                Text(specialist.name)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    // Placeholder for help action
                }) {
                    Image(systemName: "questionmark")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.orange)
                        .frame(width: 40, height: 40)
                        .background(Color.orange.opacity(0.1))
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color.white)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Topics Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Topics for you")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        LazyVGrid(columns: columns, spacing: 12) {
                            ForEach(specialist.topics) { topic in
                                NavigationLink(destination: TopicDetailView(topic: topic)) {
                                    TopicCard(topic: topic)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    
                    // FAQs Section
                    VStack(alignment: .leading, spacing: 16) {
                        Text("FAQs")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        VStack(spacing: 12) {
                            ForEach(specialist.faqs) { faq in
                                FAQItemView(faq: faq)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color.white)
        .navigationBarHidden(true)
    }
}

struct FAQItemView: View {
    let faq: FAQ
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button(action: {
                withAnimation(.spring()) {
                    isExpanded.toggle()
                }
            }) {
                HStack(alignment: .top) {
                    Text(faq.question)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "arrow.up" : "arrow.right")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.primary)
                        .padding(.top, 2)
                }
                .padding(16)
            }
            
            if isExpanded {
                VStack(alignment: .leading, spacing: 12) {
                    Divider()
                        .background(Color.gray.opacity(0.1))
                    
                    Text(faq.answer)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineSpacing(4)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
            }
        }
        .background(Color.white)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        )
    }
}

struct TopicCard: View {
    let topic: Topic
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: topic.iconName)
                .font(.system(size: 32))
                .foregroundColor(.primary)
                .frame(width: 50, height: 50)
                .background(Color(UIColor.systemGray6).opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(topic.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.primary)
                .multilineTextAlignment(.leading)
            
            Spacer(minLength: 0)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 120)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
    }
}

#Preview {
    SpecialistDetailView(specialist: SpecialistData.specialists[0])
}
