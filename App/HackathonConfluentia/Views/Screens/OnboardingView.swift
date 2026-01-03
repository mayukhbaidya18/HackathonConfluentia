import SwiftUI

struct OnboardingView: View {
    @Bindable var viewModel: FoodAdvisorViewModel
    
    var body: some View {
        ZStack {
            // Solid background
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 32) {
                    // Header with animated icon
                    VStack(spacing: 20) {
                        ZStack {
                            Circle()
                                .fill(Color.orange.opacity(0.15))
                                .frame(width: 120, height: 120)

                            Image(systemName: "waveform.path.ecg")
                                .font(.system(size: 60, weight: .light))
                                .foregroundColor(.orange)
                        }
                        .shadow(color: .orange.opacity(0.3), radius: 20, x: 0, y: 10)
                        
                        VStack(spacing: 12) {
                            Text("Smart Food Advisor")
                                .font(.system(size: 32, weight: .bold, design: .rounded))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.primary)

                            Text("Get personalized nutrition recommendations tailored to your unique health profile")
                                .font(.system(size: 18, weight: .regular, design: .rounded))
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)
                                .lineSpacing(4)
                        }
                    }
                    .padding(.top, 20)
                    
                    // Health Conditions Selection
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            Image(systemName: "heart.text.square.fill")
                                .foregroundColor(.orange)
                                .font(.title2)

                            Text("Select Your Health Conditions")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                        }
                        
                        Text("Choose all conditions that apply to receive personalized recommendations")
                            .font(.system(size: 16, design: .rounded))
                            .foregroundColor(.secondary)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                            ForEach(HealthCondition.conditions) { condition in
                                ConditionCard(
                                    condition: condition,
                                    isSelected: viewModel.selectedConditions.contains(condition)
                                ) {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                        viewModel.toggleCondition(condition)
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer(minLength: 40)
                    
                    // Continue Button
                    Button(action: {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                            viewModel.initializeSession()
                            viewModel.addWelcomeMessage()
                            viewModel.showingOnboarding = false
                        }
                    }) {
                        HStack(spacing: 12) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.title3)
                            
                            Text("Start Food Analysis")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(
                            Group {
                                if viewModel.selectedConditions.isEmpty {
                                    Color.gray
                                } else {
                                    Color.orange
                                }
                            }
                        )
                        .cornerRadius(28)
                        .shadow(
                            color: viewModel.selectedConditions.isEmpty ? .clear : Color.orange.opacity(0.4),
                            radius: 15,
                            x: 0,
                            y: 8
                        )
                    }
                    .disabled(viewModel.selectedConditions.isEmpty)
                    .scaleEffect(viewModel.selectedConditions.isEmpty ? 0.95 : 1.0)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7), value: viewModel.selectedConditions.isEmpty)
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 32)
            }
        }
    }
}

