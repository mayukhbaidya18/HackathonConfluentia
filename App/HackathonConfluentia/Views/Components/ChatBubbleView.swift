import SwiftUI

// MARK: - Enhanced Chat Bubble View
struct ChatBubbleView: View {
    let message: ChatMessage
    @State private var animateIn = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            if message.isFromUser {
                Spacer()
                
                Text(message.content)
                    .font(.system(size: 16, design: .rounded))
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(
                        LinearGradient(colors: [.orange, .orange.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .cornerRadius(4, corners: .bottomRight)
                    .shadow(color: .orange.opacity(0.2), radius: 5, x: 0, y: 2)
                
            } else {
                VStack(alignment: .leading, spacing: 6) {
                    HStack(alignment: .top, spacing: 8) {
                        // AI Avatar (Dr. Jivi)
                        ZStack {
                            Circle()
                                .stroke(Color.orange.opacity(0.3), lineWidth: 1)
                                .frame(width: 32, height: 32)
                            
                            Image(systemName: "waveform.path.ecg") // Dr. Jivi Icon
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(.orange)
                        }
                        
                        Text(message.content)
                            .font(.system(size: 16, design: .rounded))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .background(
                                LinearGradient(colors: [Color(red: 1.0, green: 0.95, blue: 0.92), Color(red: 1.0, green: 0.92, blue: 0.88)], startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .foregroundColor(.primary.opacity(0.8))
                            .cornerRadius(20)
                            .cornerRadius(4, corners: .bottomLeft)
                            .shadow(color: .black.opacity(0.03), radius: 5, x: 0, y: 2)
                        
                        Spacer()
                    }
                    
                    // Optional: Keep time if needed, but Isabella doesn't show it prominently.
                    // I'll leave it out to match Isabella's cleaner look, or keep it subtle if it was there.
                    // The previous ChatBubbleView had it. I'll remove it to "look the same".
                }
            }
        }
        .opacity(animateIn ? 1 : 0)
        .offset(y: animateIn ? 0 : 20)
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8).delay(0.1)) {
                animateIn = true
            }
        }
    }
}
