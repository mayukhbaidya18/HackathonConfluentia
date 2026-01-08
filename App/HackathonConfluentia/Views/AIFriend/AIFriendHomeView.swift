import SwiftUI

struct AIFriendHomeView: View {
    @State private var selectedProfileIndex = 0
    var onStartChat: (AIFriendProfile) -> Void

    let profiles = AIFriendData.profiles
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            HStack {
                Button(action: {
                    // Back action if needed, or placeholder
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.black)
                }
                .opacity(0) // Hidden for now as it's a root tab usually
                
                Spacer()
                
                Text("Choose your friend")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                // Balance space
                Image(systemName: "chevron.left").opacity(0)
            }
            .padding()
            .background(Color.white)
            
            ScrollView {
                VStack(spacing: 24) {
                    // Carousel
                    TabView(selection: $selectedProfileIndex) {
                        ForEach(0..<profiles.count, id: \.self) { index in
                            ProfileImageView(profile: profiles[index], isSelected: selectedProfileIndex == index)
                                .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(height: 200)
                    
                    // Custom Page Indicator
                    HStack(spacing: 8) {
                        ForEach(0..<profiles.count, id: \.self) { index in
                            Capsule()
                                .fill(selectedProfileIndex == index ? Color.orange : Color.gray.opacity(0.3))
                                .frame(width: selectedProfileIndex == index ? 24 : 8, height: 8)
                                .animation(.spring(), value: selectedProfileIndex)
                        }
                    }
                    
                    let profile = profiles[selectedProfileIndex]
                    
                    // Name
                    Text(profile.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    // Tags
                    HStack(spacing: 8) {
                        ForEach(profile.tags, id: \.self) { tag in
                            Text(tag)
                                .font(.caption)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.white)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                                )
                        }
                    }

                    // About Section
                    VStack(alignment: .leading, spacing: 20) {
                        Text(profile.description)
                            .font(.body)
                            .foregroundColor(.primary.opacity(0.8))
                            .lineSpacing(4)

                        VStack(alignment: .leading, spacing: 12) {
                            Text("Areas of expertise")
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            ForEach(profile.expertise, id: \.self) { item in
                                HStack(alignment: .top, spacing: 12) {
                                    Circle()
                                        .fill(Color.green)
                                        .frame(width: 8, height: 8)
                                        .padding(.top, 6)

                                    Text(item)
                                        .font(.body)
                                        .foregroundColor(.primary.opacity(0.8))
                                }
                            }
                        }
                    }
                    .padding(24)
                    .background(Color(UIColor.systemGray6).opacity(0.3))
                    .cornerRadius(16)
                    .padding(.horizontal)
                    
                    Spacer(minLength: 20)
                }
            }
            
            // Footer Button
            VStack(spacing: 12) {
                Button(action: {
                    onStartChat(profiles[selectedProfileIndex])
                }) {
                    Text("Chat with \(profiles[selectedProfileIndex].name)")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 56)
                        .background(Color.orange)
                        .cornerRadius(16)
                }
                
                Text("Free consultation • No commitment")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(24)
            .background(Color.white)
        }
        .background(Color.white)
    }
}

struct ProfileImageView: View {
    let profile: AIFriendProfile
    let isSelected: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.gray.opacity(0.1))
                .frame(width: 160, height: 160)

            // Profile Image from Assets
            Image(profile.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .clipShape(Circle())

            // Online Indicator
            Circle()
                .fill(Color.green)
                .frame(width: 24, height: 24)
                .background(Circle().fill(Color.white).frame(width: 32, height: 32))
                .offset(x: 50, y: 50)
        }
        .scaleEffect(isSelected ? 1.0 : 0.9)
        .animation(.spring(), value: isSelected)
    }
}

#Preview {
    AIFriendHomeView(onStartChat: { _ in })
}


