import SwiftUI

struct DashboardView: View {
    @Binding var selectedTab: Int

    init(selectedTab: Binding<Int>) {
        self._selectedTab = selectedTab
    }

    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Top Bar
                HStack {
                    // Logo Button
                    Button(action: {}) {
                        Image(systemName: "plus")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                            .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                    
                    Spacer()
                    
                    // Right Icons
                    HStack(spacing: 16) {
                        Button(action: {}) {
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "bell")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                        }
                        
                        Button(action: {}) {
                            HStack(spacing: 4) {
                                Image(systemName: "wallet.pass")
                                Text("0.00")
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .foregroundColor(.primary)
                        }
                        
                        Button(action: {}) {
                            Image(systemName: "person")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
                
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
                        
                        // Central Circle
                        ZStack {
                            Circle()
                                .fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [Color.orange.opacity(0.1), Color.orange.opacity(0.01)]),
                                        center: .center,
                                        startRadius: 20,
                                        endRadius: 100
                                    )
                                )
                                .frame(width: 200, height: 200)
                            
                            Circle()
                                .fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [Color.orange.opacity(0.2), Color.clear]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 80
                                    )
                                )
                                .frame(width: 160, height: 160)
                        }
                        .padding(.vertical, 10)
                        
                        // Search Bar
                        HStack {
                            TextField("Stomach ache", text: .constant(""))
                                .padding(.leading, 20)
                            
                            Button(action: {}) {
                                Image(systemName: "mic.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .frame(width: 44, height: 44)
                                    .background(Color.orange)
                                    .clipShape(Circle())
                                    .padding(6)
                            }
                        }
                        .background(Color.white)
                        .cornerRadius(30)
                        .shadow(color: Color.black.opacity(0.05), radius: 10, x: 0, y: 5)
                        .padding(.horizontal)
                        
                        // Health Suite Section
                        VStack(spacing: 16) {
                            HStack {
                                Rectangle()
                                    .fill(Color.orange.opacity(0.3))
                                    .frame(width: 40, height: 2)
                                
                                Text("Meet Your Personal Health Suite")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.primary)
                                
                                Rectangle()
                                    .fill(Color.orange.opacity(0.3))
                                    .frame(width: 40, height: 2)
                            }
                            
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                                // Card 1: Doctor Jivi
                                Button(action: { selectedTab = 1 }) {
                                    DashboardCard(
                                        title: "Doctor Jivi",
                                        subtitle: "Quick, Accurate Diagnosis",
                                        icon: "stethoscope",
                                        iconColor: .orange
                                    )
                                }

                                // Card 2: Mind Coach
                                Button(action: { selectedTab = 3 }) {
                                    DashboardCard(
                                        title: "Mind Coach",
                                        subtitle: "Your Mind Matters",
                                        icon: "brain.head.profile",
                                        iconColor: .orange,
                                        isNew: true
                                    )
                                }

                                // Card 3: Specialists
                                Button(action: { selectedTab = 4 }) {
                                    DashboardCard(
                                        title: "Specialists",
                                        subtitle: "Personal Health Coach",
                                        icon: "person.text.rectangle",
                                        iconColor: .orange,
                                        isNew: true
                                    )
                                }

                                // Card 4: Care Plans
                                Button(action: { selectedTab = 2 }) {
                                    DashboardCard(
                                        title: "Care Plans",
                                        subtitle: "Health Start Here",
                                        icon: "list.clipboard",
                                        iconColor: .orange,
                                        isNew: true
                                    )
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    .padding(.bottom, 30)
                }
            }
        }
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
            
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
            
            Text(subtitle)
                .font(.system(size: 12))
                .foregroundColor(.secondary)
        }
        .padding(16)
        .frame(height: 140)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.03), radius: 8, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.1), lineWidth: 1)
        )
    }
}


