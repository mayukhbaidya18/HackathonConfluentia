import SwiftUI

struct SpecialistsView: View {
    let specialists = SpecialistData.specialists
    @State private var selectedSpecialist: Specialist?

    var body: some View {
        NavigationSplitView {
            // Master: List of specialists
            List(specialists, selection: $selectedSpecialist) { specialist in
                NavigationLink(value: specialist) {
                    HStack(spacing: 12) {
                        Image(systemName: specialist.iconName)
                            .font(.title2)
                            .foregroundColor(.blue)
                            .frame(width: 40)

                        Text(specialist.name)
                            .font(.body)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Specialists")
        } detail: {
            // Detail: Selected specialist's topics
            if let selectedSpecialist = selectedSpecialist {
                SpecialistDetailView(specialist: selectedSpecialist)
            } else {
                // Placeholder when no specialist is selected
                VStack(spacing: 16) {
                    Image(systemName: "person.3.sequence")
                        .font(.system(size: 60))
                        .foregroundColor(.gray)

                    Text("Select a Specialist")
                        .font(.title2)
                        .fontWeight(.semibold)

                    Text("Choose a specialist from the list to view available topics and consultations.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(UIColor.systemGroupedBackground))
            }
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
