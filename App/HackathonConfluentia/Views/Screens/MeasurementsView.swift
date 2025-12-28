import SwiftUI

struct MeasurementsView: View {
    @Binding var profile: UserProfile
    let onContinue: () -> Void
    let onBack: () -> Void
    
    // Quick select options
    let heightOptions = [150, 160, 170, 180, 190, 200]
    let weightOptions = [50, 60, 70, 80, 90, 100]
    
    var body: some View {
        VStack(spacing: 24) {
            // Header
            VStack(alignment: .leading, spacing: 8) {
                Text("Physical Measurements")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                
                Text("Help us understand your body metrics")
                    .font(.system(size: 16, design: .rounded))
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 24)
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    // Height Input
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Your height (in cm)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        
                        VStack(spacing: 20) {
                            HStack(alignment: .lastTextBaseline) {
                                Image(systemName: "ruler.fill")
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                    .padding(8)
                                    .background(Color.blue.opacity(0.1))
                                    .clipShape(Circle())
                                
                                Text("\(Int(profile.height))")
                                    .font(.system(size: 48, weight: .bold, design: .rounded))
                                Text("cm")
                                    .font(.system(size: 20, weight: .medium, design: .rounded))
                                    .foregroundColor(.secondary)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text(String(format: "%.2fm", profile.height / 100))
                                    Text(convertToFeetInches(profile.height))
                                }
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                            }
                            
                            // Adjust buttons
                            HStack(spacing: 12) {
                                MeasurementButton(label: "-5", action: { profile.height -= 5 })
                                MeasurementButton(label: "-", action: { profile.height -= 1 })
                                MeasurementButton(label: "+", action: { profile.height += 1 })
                                MeasurementButton(label: "+5", action: { profile.height += 5 })
                            }
                            
                            // Quick Select
                            VStack(spacing: 8) {
                                Text("Quick select:")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(heightOptions, id: \.self) { height in
                                            Button(action: {
                                                withAnimation {
                                                    profile.height = Double(height)
                                                }
                                            }) {
                                                Text("\(height)cm")
                                                    .font(.system(size: 14, weight: .medium))
                                                    .padding(.horizontal, 16)
                                                    .padding(.vertical, 8)
                                                    .background(
                                                        profile.height == Double(height) ? Color.blue : Color.white
                                                    )
                                                    .foregroundColor(
                                                        profile.height == Double(height) ? .white : .blue
                                                    )
                                                    .cornerRadius(20)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .stroke(Color.blue.opacity(0.3), lineWidth: 1)
                                                    )
                                            }
                                        }
                                    }
                                }
                            }
                            
                            Slider(value: $profile.height, in: 100...250, step: 1)
                                .accentColor(.blue)
                            
                            HStack {
                                Text("100cm")
                                Spacer()
                                Text("250cm")
                            }
                            .font(.caption)
                            .foregroundColor(.secondary)
                        }
                        .padding(20)
                        .background(Color.blue.opacity(0.05))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.blue.opacity(0.2), lineWidth: 1)
                        )
                    }
                    
                    // Weight Input
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Your weight (in kg)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        
                        VStack(spacing: 20) {
                            HStack(alignment: .lastTextBaseline) {
                                Image(systemName: "scalemass.fill")
                                    .foregroundColor(.green)
                                    .font(.title2)
                                    .padding(8)
                                    .background(Color.green.opacity(0.1))
                                    .clipShape(Circle())
                                
                                Text("\(Int(profile.weight))")
                                    .font(.system(size: 48, weight: .bold, design: .rounded))
                                Text("kg")
                                    .font(.system(size: 20, weight: .medium, design: .rounded))
                                    .foregroundColor(.secondary)
                                
                                Spacer()
                                
                                VStack(alignment: .trailing) {
                                    Text(String(format: "%.1f lbs", profile.weight * 2.20462))
                                    Text(String(format: "%d oz", Int(profile.weight * 35.274)))
                                }
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                            }
                            
                            // Adjust buttons
                            HStack(spacing: 12) {
                                MeasurementButton(label: "-5", action: { profile.weight -= 5 }, color: .green)
                                MeasurementButton(label: "-0.5", action: { profile.weight -= 0.5 }, color: .green)
                                MeasurementButton(label: "+0.5", action: { profile.weight += 0.5 }, color: .green)
                                MeasurementButton(label: "+5", action: { profile.weight += 5 }, color: .green)
                            }
                            
                            // Quick Select
                            VStack(spacing: 8) {
                                Text("Quick select:")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 10) {
                                        ForEach(weightOptions, id: \.self) { weight in
                                            Button(action: {
                                                withAnimation {
                                                    profile.weight = Double(weight)
                                                }
                                            }) {
                                                Text("\(weight)kg")
                                                    .font(.system(size: 14, weight: .medium))
                                                    .padding(.horizontal, 16)
                                                    .padding(.vertical, 8)
                                                    .background(
                                                        profile.weight == Double(weight) ? Color.green : Color.white
                                                    )
                                                    .foregroundColor(
                                                        profile.weight == Double(weight) ? .white : .green
                                                    )
                                                    .cornerRadius(20)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 20)
                                                            .stroke(Color.green.opacity(0.3), lineWidth: 1)
                                                    )
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding(20)
                        .background(Color.green.opacity(0.05))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.green.opacity(0.2), lineWidth: 1)
                        )
                    }
                }
            }
            
            Spacer()
            
            // Navigation Buttons
            HStack(spacing: 16) {
                Button(action: onBack) {
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Back")
                    }
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(16)
                }
                
                Button(action: onContinue) {
                    HStack {
                        Text("Continue")
                        Image(systemName: "arrow.right")
                    }
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(colors: [.blue, .purple], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(16)
                    .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 5)
                }
            }
            .padding(.bottom, 16)
        }
        .padding(.horizontal, 24)
        .background(Color(.systemBackground))
    }
    
    private func convertToFeetInches(_ cm: Double) -> String {
        let totalInches = cm / 2.54
        let feet = Int(totalInches / 12)
        let inches = Int(totalInches.truncatingRemainder(dividingBy: 12))
        return "\(feet)'\(inches)\""
    }
}

struct MeasurementButton: View {
    let label: String
    let action: () -> Void
    var color: Color = .blue
    
    var body: some View {
        Button(action: {
            let generator = UIImpactFeedbackGenerator(style: .light)
            generator.impactOccurred()
            action()
        }) {
            Text(label)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(color)
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: color.opacity(0.1), radius: 4, x: 0, y: 2)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(color.opacity(0.1), lineWidth: 1)
                )
        }
    }
}
