import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            DashboardView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            FoodAdvisorView()
                .tabItem {
                    Image(systemName: "waveform.path.ecg")
                    Text("Dr. Jivi")
                }
                .tag(1)
            
            LongevityCoachView()
                .tabItem {
                    Image(systemName: "list.clipboard.fill")
                    Text("Care Plans")
                }
                .tag(2)
            
            AIFriendChatView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Mind Coach")
                }
                .tag(3)
                
            SpecialistsView()
                .tabItem {
                    Image(systemName: "stethoscope")
                    Text("Specialists")
                }
                .tag(4)
        }
        .accentColor(.orange)
        .preferredColorScheme(.light) // Force light mode for the entire app
    }
}
