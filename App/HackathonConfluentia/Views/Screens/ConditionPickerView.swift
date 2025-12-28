import SwiftUI

// MARK: - Enhanced Condition Picker View
struct ConditionPickerView: View {
    @Binding var selectedConditions: Set<HealthCondition>
    let onUpdate: () -> Void
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color(.systemBackground), Color(.systemGray6).opacity(0.3)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 24) {
                        // Header
                        VStack(spacing: 8) {
                            Image(systemName: "heart.text.square.fill")
                                .font(.system(size: 32))
                                .foregroundColor(.pink)
                            
                            Text("Update Your Health Profile")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                        }
                        .padding(.top, 8)
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                            ForEach(HealthCondition.conditions) { condition in
                                ConditionCard(
                                    condition: condition,
                                    isSelected: selectedConditions.contains(condition)
                                ) {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                        if selectedConditions.contains(condition) {
                                            selectedConditions.remove(condition)
                                        } else {
                                            selectedConditions.insert(condition)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 32)
                }
            }
            .navigationTitle("Health Conditions")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.blue)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        onUpdate()
                        dismiss()
                    }) {
                        Text("Update")
                            .fontWeight(.semibold)
                    }
                    .disabled(selectedConditions.isEmpty)
                    .foregroundColor(selectedConditions.isEmpty ? .gray : .blue)
                }
            }
        }
    }
}

