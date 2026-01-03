import SwiftUI

struct BasicInfoView: View {
    @Binding var profile: UserProfile
    let onContinue: () -> Void
    let onBack: () -> Void
    @FocusState private var focusedField: Field?

    enum Field {
        case name, age
    }

    var body: some View {
        VStack(spacing: 24) {
            // Header
            VStack(alignment: .leading, spacing: 8) {
                Text("Let's start with the basics")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                
                Text("This helps us personalize your health assessment")
                    .font(.system(size: 16, design: .rounded))
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 24)
            
            VStack(spacing: 24) {
                // Name Input
                VStack(alignment: .leading, spacing: 8) {
                    Text("Name")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                        TextField("Your Name", text: $profile.name)
                            .font(.system(size: 18))
                            .focused($focusedField, equals: .name)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                }
                
                // Age Input
                VStack(alignment: .leading, spacing: 8) {
                    Text("How old are you?")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.gray)
                        TextField("Age", value: $profile.age, format: .number)
                            .keyboardType(.numberPad)
                            .font(.system(size: 18))
                            .focused($focusedField, equals: .age)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                }
                
                // Gender Selection
                VStack(alignment: .leading, spacing: 12) {
                    Text("Select your gender")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    HStack(spacing: 12) {
                        ForEach(Gender.allCases) { gender in
                            Button(action: {
                                withAnimation(.spring(response: 0.3)) {
                                    profile.gender = gender
                                }
                            }) {
                                Text(gender.rawValue)
                                    .font(.system(size: 16, weight: .medium))
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 14)
                                    .background(
                                        profile.gender == gender ? Color(.systemGray6) : Color(.systemGray6).opacity(0.5)
                                    )
                                    .foregroundColor(.primary)
                                    .cornerRadius(12)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(
                                                profile.gender == gender ? Color.black : Color.clear,
                                                lineWidth: 1
                                            )
                                    )
                            }
                        }
                    }
                }
            }
            
            Spacer()

            // Navigation Buttons
            HStack(spacing: 16) {
                Button(action: onContinue) {
                    HStack {
                        Text("Continue")
                        Image(systemName: "arrow.right")
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(isValid ? LinearGradient(colors: [.orange, .red], startPoint: .leading, endPoint: .trailing) : LinearGradient(colors: [.gray, .gray], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(16)
                    .shadow(color: isValid ? .orange.opacity(0.3) : .clear, radius: 10, x: 0, y: 5)
                }
                .disabled(!isValid)
            }
            .padding(.bottom, 16)
        }
        .padding(.horizontal, 24)
        .background(Color(.systemBackground))
        .contentShape(Rectangle())
        .onTapGesture {
            focusedField = nil
        }
    }
    
    private var isValid: Bool {
        !profile.name.isEmpty && profile.age != nil && profile.gender != nil
    }
}
