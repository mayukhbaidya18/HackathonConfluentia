import SwiftUI

struct SpecialistsView: View {
    let specialists = SpecialistData.specialists
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(specialists) { specialist in
                        NavigationLink(destination: SpecialistDetailView(specialist: specialist)) {
                            SpecialistCard(specialist: specialist)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationTitle("Specialists")
            .background(Color(UIColor.systemGroupedBackground))
        }
    }
}

struct SpecialistCard: View {
    let specialist: Specialist
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: specialist.iconName)
                .font(.system(size: 40))
                .foregroundColor(.blue) // Or appropriate theme color
                .frame(height: 50)
            
            Text(specialist.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    SpecialistsView()
}
