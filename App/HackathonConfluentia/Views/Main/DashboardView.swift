import SwiftUI
import Combine

class DashboardViewModel: ObservableObject {
    @Published var placeholderIndex = 0
    @Published var offset: CGFloat = 50
    private var animationTimer: Timer?

    let placeholderTexts = [
        "Stomach ache",
        "Hypertension",
        "Frequent headaches"
    ]

    func startAnimation() {
        stopAnimation() // Reset

        withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
            offset = 0
        }

        animationTimer = Timer.scheduledTimer(withTimeInterval: 2.6, repeats: true) { [weak self] _ in
            guard let self = self else { return }

            withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                self.offset = -50
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.placeholderIndex = (self.placeholderIndex + 1) % self.placeholderTexts.count
                self.offset = 50
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 0.31) {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                    self.offset = 0
                }
            }
        }
    }

    func stopAnimation() {
        animationTimer?.invalidate()
        animationTimer = nil
    }
}

struct DashboardView: View {
    @Binding var selectedTab: Int
    @StateObject private var viewModel = DashboardViewModel()

    init(selectedTab: Binding<Int>) {
        self._selectedTab = selectedTab
    }

    var body: some View {
        // FIX 1: Use NavigationStack instead of NavigationView
        // NavigationStack behaves consistently as a full-screen stack on iPad.
        NavigationStack {
            ZStack {
                Color(.systemBackground).ignoresSafeArea()

                VStack(spacing: 0) {
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 24) {
                            // Greeting
                            VStack(spacing: 8) {
                                Text("Hello there!")
                                    .font(.system(size: 20, weight: .medium))
                                    .foregroundColor(.orange)
                                
                                Text("How are you feeling today?")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.primary)
                            }
                            .padding(.top, 20)
                            
                            // MARK: - Isolated Ripple View
                            CenteredGradientRippleView()
                                .padding(.vertical, 10)
                            
                            // Search Bar
                            NavigationLink(destination: JiviAssistantView(selectedTab: $selectedTab)) {
                                HStack {
                                    HStack {
                                        Text(viewModel.placeholderTexts[viewModel.placeholderIndex])
                                            .foregroundColor(.secondary)
                                            .font(.system(size: 16))
                                            .offset(y: viewModel.offset)
                                            .opacity(viewModel.offset == 0 ? 1 : 0)
                                        Spacer()
                                    }
                                    .padding(.leading, 20)
                                    .clipped()

                                    Image(systemName: "arrow.right")
                                        .font(.system(size: 16, weight: .semibold))
                                        .foregroundColor(.white)
                                        .frame(width: 44, height: 44)
                                        .background(Color.orange)
                                        .clipShape(Circle())
                                        .padding(6)
                                }
                                .background(Color.white)
                                .cornerRadius(30)
                                .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 5)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.horizontal)
                            
                            // Health Suite Section
                            VStack(spacing: 16) {
                                HStack {
                                    Rectangle().fill(Color.orange.opacity(0.3)).frame(width: 40, height: 2)
                                    Text("Meet Your Personal Health Suite").font(.system(size: 16, weight: .semibold)).foregroundColor(.primary)
                                    Rectangle().fill(Color.orange.opacity(0.3)).frame(width: 40, height: 2)
                                }
                                
                                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                                    DashboardCard(title: "Doctor Jivi", subtitle: "Quick, Accurate Diagnosis", icon: "stethoscope", iconColor: .orange)
                                        .onTapGesture { selectedTab = 1 }
                                    
                                    DashboardCard(title: "Mind Coach", subtitle: "Your Mind Matters", icon: "brain.head.profile", iconColor: .orange)
                                        .onTapGesture { selectedTab = 3 }
                                    
                                    DashboardCard(title: "Specialists", subtitle: "Personal Health Coach", icon: "person.text.rectangle", iconColor: .orange)
                                        .onTapGesture { selectedTab = 4 }
                                    
                                    DashboardCard(title: "Care Plans", subtitle: "Health Start Here", icon: "list.clipboard", iconColor: .orange)
                                        .onTapGesture { selectedTab = 2 }
                                }
                                .padding(.horizontal)
                            }
                        }
                        .padding(.bottom, 30)
                        // FIX 2: Ensure ScrollView content tries to fill width
                        .frame(maxWidth: .infinity)
                    }
                }
                // FIX 3: Ensure the main container fills the NavigationStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .navigationBarHidden(true)
        }
        .onAppear {
            viewModel.startAnimation()
        }
    }
}

// MARK: - Ripple Component (Unchanged)
struct CenteredGradientRippleView: View {
    @State private var isAnimating = false
    let breathingAnimation = Animation.easeInOut(duration: 2.0).repeatForever(autoreverses: true)
    
    var body: some View {
        ZStack {
            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [Color.orange.opacity(0.1), Color.orange.opacity(0.01)]), center: .center, startRadius: 20, endRadius: 100))
                .frame(width: isAnimating ? 260 : 180, height: isAnimating ? 260 : 180)
                .animation(breathingAnimation, value: isAnimating)

            Circle()
                .fill(RadialGradient(gradient: Gradient(colors: [Color.orange.opacity(0.2), Color.clear]), center: .center, startRadius: 0, endRadius: 80))
                .frame(width: isAnimating ? 200 : 140, height: isAnimating ? 200 : 140)
                .animation(breathingAnimation, value: isAnimating)

            Circle()
                .fill(Color.orange.opacity(0.3))
                .frame(width: 80, height: 80)
                .scaleEffect(isAnimating ? 1.05 : 0.95)
                .animation(breathingAnimation, value: isAnimating)
        }
        .frame(height: 260)
        .onAppear { isAnimating = true }
    }
}

struct DashboardCard: View {
    let title: String
    let subtitle: String
    let icon: String
    let iconColor: Color
    var isNew: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 24))
                    .foregroundColor(iconColor)
                Spacer()
                if isNew {
                    Text("New")
                        .font(.system(size: 10, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.orange)
                        .cornerRadius(8)
                }
            }

            Spacer()

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)

                Text(subtitle)
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
            }
        }
        .padding(16)
        .frame(minHeight: 140)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.03), radius: 8, x: 0, y: 4)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray.opacity(0.1), lineWidth: 1))
    }
}
