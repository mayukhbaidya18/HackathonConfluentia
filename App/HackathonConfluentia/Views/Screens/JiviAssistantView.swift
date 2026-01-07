import SwiftUI

struct JiviAssistantView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var selectedTab: Int
    @State private var expandedOption: String? = nil

    // Custom color to match the orange theme
    let themeOrange = Color(red: 236/255, green: 112/255, blue: 60/255)

    // Data model for the 4 main tabs
    let menuOptions: [(title: String, icon: String, description: String)] = [
        (
            "Dr Jivi",
            "person.text.rectangle",
            "Your personal AI health assistant available 24/7. Describe your symptoms and get instant preliminary guidance, health tips, and personalized recommendations based on your concerns."
        ),
        (
            "Care Plans",
            "heart.text.square",
            "Take comprehensive health assessments to understand your body better. Get personalized longevity insights, biological age estimates, and actionable recommendations to improve your overall wellbeing through AI-powered analysis."
        ),
        (
            "Mind Coach",
            "brain.head.profile",
            "Access mental wellness resources, guided meditation, and cognitive exercises. Track your mood, manage stress, and build emotional resilience with evidence-based techniques designed for your mental health journey."
        ),
        (
            "Specialists",
            "stethoscope",
            "Connect with certified medical specialists across 16+ fields. Browse detailed health topics, ask questions, and access expert-curated content to understand your health conditions better from trusted medical professionals."
        )
    ]

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {

                // MARK: - Header
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.black)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .clipShape(Circle())
                    }

                    Spacer()

                    Text("Jivi Assistant")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color(.darkGray))

                    Spacer()

                    // Invisible placeholder to balance the center title
                    Image(systemName: "chevron.left")
                        .padding(12)
                        .hidden()
                }
                .padding(.horizontal)
                .padding(.top, 10)

                // MARK: - Chat Bubble Area
                HStack(alignment: .top, spacing: 12) {
                    // The orange logo icon
                    ZStack {
                        Circle()
                            .stroke(themeOrange, lineWidth: 1.5)
                            .background(Circle().fill(Color.white))
                            .frame(width: 40, height: 40)

                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(themeOrange)
                    }

                    // The text bubble
                    Text("Hello there! How can I help you today?")
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(themeOrange, lineWidth: 1)
                        )
                }
                .padding(.horizontal)

                // MARK: - Menu Options with Expandable Descriptions
                VStack(spacing: 16) {
                    ForEach(menuOptions, id: \.title) { option in
                        ExpandableMenuOption(
                            title: option.title,
                            iconName: option.icon,
                            description: option.description,
                            color: themeOrange,
                            isExpanded: expandedOption == option.title,
                            onTap: {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                    expandedOption = expandedOption == option.title ? nil : option.title
                                }
                            },
                            selectedTab: $selectedTab
                        )
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

// MARK: - Expandable Menu Option Component
struct ExpandableMenuOption: View {
    let title: String
    let iconName: String
    let description: String
    let color: Color
    let isExpanded: Bool
    let onTap: () -> Void
    @Binding var selectedTab: Int
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Main button (always visible)
            Button(action: onTap) {
                HStack(spacing: 16) {
                    Image(systemName: iconName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundColor(color)

                    Text(title)
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)

                    Spacer()

                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(color)
                }
                .padding(.vertical, 16)
                .padding(.horizontal, 20)
            }

            // Expandable description section
            if isExpanded {
                VStack(alignment: .leading, spacing: 12) {
                    // Description text
                    Text(description)
                        .font(.system(size: 15))
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 20)
                        .padding(.top, 8)

                    // "Go to [Tab]" button
                    Button(action: {
                        navigateToTab(title)
                    }) {
                        HStack {
                            Text("Go to \(title)")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)

                            Image(systemName: "arrow.right")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            LinearGradient(
                                colors: [color, color.opacity(0.8)],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(12)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16)
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(color, lineWidth: 1)
        )
    }

    private func navigateToTab(_ tabName: String) {
        // Map tab names to tab indices based on MainTabView structure
        switch tabName {
        case "Dr Jivi":
            selectedTab = 1  // FoodAdvisorView (Dr. Jivi tab)
        case "Care Plans":
            selectedTab = 2  // LongevityCoachView
        case "Mind Coach":
            selectedTab = 3  // AIFriendChatView
        case "Specialists":
            selectedTab = 4  // SpecialistsView
        default:
            break
        }

        // Dismiss the sheet after navigation
        dismiss()
    }
}

// MARK: - Preview Provider
struct JiviAssistantView_Previews: PreviewProvider {
    static var previews: some View {
        JiviAssistantView(selectedTab: .constant(0))
    }
}
