import SwiftUI

// MARK: - Enhanced Typing Indicator
struct TypingIndicatorView: View {
    @State private var animationPhase = 0
    @State private var pulseAnimation = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            // AI Avatar with pulse animation
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.blue.opacity(0.2), .cyan.opacity(0.1)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 32, height: 32)
                    .scaleEffect(pulseAnimation ? 1.1 : 1.0)
                    .animation(.easeInOut(duration: 1.0).repeatForever(), value: pulseAnimation)
                
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.blue)
            }
            .padding(.top, 2)
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 8) {
                    // Animated typing dots
                    HStack(spacing: 4) {
                        ForEach(0..<3) { index in
                            Circle()
                                .fill(.gray)
                                .frame(width: 8, height: 8)
                                .scaleEffect(animationPhase == index ? 1.3 : 0.7)
                                .opacity(animationPhase == index ? 1.0 : 0.5)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(
                        LinearGradient(
                            colors: [Color(.systemGray6), Color(.systemGray5).opacity(0.5)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .cornerRadius(20, corners: [.topLeft, .topRight, .bottomRight])
                    .shadow(color: .black.opacity(0.05), radius: 8, x: 0, y: 2)
                    
                    Spacer()
                }
                
                Text("AI is thinking...")
                    .font(.system(size: 11, design: .rounded))
                    .foregroundColor(.secondary)
                    .padding(.leading, 16)
                    .opacity(0.7)
            }
        }
        .onAppear {
            pulseAnimation = true
            
            // Animate typing dots
            Timer.scheduledTimer(withTimeInterval: 0.4, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 0.3)) {
                    animationPhase = (animationPhase + 1) % 3
                }
            }
        }
    }
}


