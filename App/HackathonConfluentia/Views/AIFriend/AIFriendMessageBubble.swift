import SwiftUI

struct AIFriendMessageBubble: View {
    let message: AIFriendMessage
    @State private var isVisible = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            if message.isFromUser {
                Spacer()
            }
            
            Text(message.content)
                .font(.system(size: 16, design: .rounded))
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(
                    message.isFromUser ? 
                    LinearGradient(colors: [.orange, .orange.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing) :
                    LinearGradient(colors: [Color(red: 1.0, green: 0.95, blue: 0.92), Color(red: 1.0, green: 0.92, blue: 0.88)], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .foregroundColor(message.isFromUser ? .white : .primary.opacity(0.8))
                .cornerRadius(20)
                .cornerRadius(4, corners: message.isFromUser ? .bottomRight : .bottomLeft)
                .shadow(color: message.isFromUser ? .orange.opacity(0.2) : .black.opacity(0.03), radius: 5, x: 0, y: 2)
            
            if !message.isFromUser {
                Spacer()
            }
        }
        .padding(.horizontal)
        .opacity(isVisible ? 1 : 0)
        .offset(y: isVisible ? 0 : 20)
        .onAppear {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                isVisible = true
            }
        }
    }
}
