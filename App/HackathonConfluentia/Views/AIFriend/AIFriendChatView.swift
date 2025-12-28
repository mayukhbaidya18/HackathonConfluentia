import SwiftUI

struct AIFriendChatView: View {
    @State private var chatManager = AIFriendChatManager()
    @State private var showHome = true
    
    var body: some View {
        NavigationStack {
            if showHome {
                AIFriendHomeView { selectedProfile in
                    // User selected a profile
                    chatManager.switchToProfile(selectedProfile)
                    withAnimation {
                        showHome = false
                    }
                }
            } else {
                ActiveChatView(showHome: $showHome, chatManager: chatManager)
                    .transition(.move(edge: .trailing))
            }
        }
        .preferredColorScheme(.light)
    }
}

#Preview {
    AIFriendChatView()
}
