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

                            Slider(value: $profile.weight, in: 20...200, step: 0.5)
                                .accentColor(.green)

                            HStack {
                                Text("20kg")
                                Spacer()
                                Text("200kg")
                            }
                            .font(.caption)
                            .foregroundColor(.secondary)
                        }
                        .padding(20)
                        .background(Color.green.opacity(0.05))
                        .cornerRadius(24)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.green.opacity(0.2), lineWidth: 1)
                        )
                    }

                    // BMI Card
                    BMICard(height: profile.height, weight: profile.weight)
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

// MARK: - BMI Card
struct BMICard: View {
    let height: Double // in cm
    let weight: Double // in kg

    // Colors
    let cardBackground = Color(red: 0.96, green: 0.95, blue: 1.0)
    let iconBackground = Color(red: 0.92, green: 0.88, blue: 0.98)
    let iconForeground = Color(red: 0.45, green: 0.25, blue: 0.85)

    // BMI Bar Colors
    let bmiBlue = Color(red: 0.23, green: 0.51, blue: 0.96)
    let bmiGreen = Color(red: 0.13, green: 0.77, blue: 0.36)
    let bmiYellow = Color(red: 0.98, green: 0.80, blue: 0.0)
    let bmiRed = Color(red: 0.93, green: 0.29, blue: 0.29)

    // Calculate BMI
    private var bmiValue: Double {
        let heightInMeters = height / 100
        return weight / (heightInMeters * heightInMeters)
    }

    // Determine BMI category
    private var bmiCategory: String {
        switch bmiValue {
        case ..<18.5: return "Underweight"
        case 18.5..<25: return "Normal"
        case 25..<30: return "Overweight"
        default: return "Obese"
        }
    }

    // Badge color based on category
    private var badgeBackground: Color {
        switch bmiValue {
        case ..<18.5: return Color.blue.opacity(0.2)
        case 18.5..<25: return Color(red: 0.86, green: 0.98, blue: 0.88)
        case 25..<30: return Color.orange.opacity(0.2)
        default: return Color.red.opacity(0.2)
        }
    }

    private var badgeForeground: Color {
        switch bmiValue {
        case ..<18.5: return .blue
        case 18.5..<25: return Color(red: 0.15, green: 0.65, blue: 0.35)
        case 25..<30: return .orange
        default: return .red
        }
    }

    // Calculate indicator position (0.0 to 1.0)
    private var indicatorPosition: CGFloat {
        let clampedBMI = max(15, min(35, bmiValue))

        // The bar has 4 equal segments (25% each):
        // 0-25%: BMI 15-18.5 (underweight)
        // 25-50%: BMI 18.5-25 (normal)
        // 50-75%: BMI 25-30 (overweight)
        // 75-100%: BMI 30-35 (obese)

        let segment1Range: ClosedRange<Double> = 15...18.5  // Underweight
        let segment2Range: ClosedRange<Double> = 18.5...25  // Normal
        let segment3Range: ClosedRange<Double> = 25...30    // Overweight
        let segment4Range: ClosedRange<Double> = 30...35    // Obese

        if clampedBMI <= segment1Range.upperBound {
            // In first segment (0-25%)
            let progress = (clampedBMI - segment1Range.lowerBound) / (segment1Range.upperBound - segment1Range.lowerBound)
            return CGFloat(progress * 0.25)
        } else if clampedBMI <= segment2Range.upperBound {
            // In second segment (25-50%)
            let progress = (clampedBMI - segment2Range.lowerBound) / (segment2Range.upperBound - segment2Range.lowerBound)
            return CGFloat(0.25 + progress * 0.25)
        } else if clampedBMI <= segment3Range.upperBound {
            // In third segment (50-75%)
            let progress = (clampedBMI - segment3Range.lowerBound) / (segment3Range.upperBound - segment3Range.lowerBound)
            return CGFloat(0.50 + progress * 0.25)
        } else {
            // In fourth segment (75-100%)
            let progress = (clampedBMI - segment4Range.lowerBound) / (segment4Range.upperBound - segment4Range.lowerBound)
            return CGFloat(0.75 + progress * 0.25)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header
            HStack(alignment: .top, spacing: 12) {
                // Icon
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(iconBackground)
                        .frame(width: 40, height: 40)

                    Image(systemName: "chart.bar.fill")
                        .font(.system(size: 18))
                        .foregroundColor(iconForeground)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("Body Mass Index")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    HStack(spacing: 8) {
                        Text(String(format: "%.1f", bmiValue))
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.primary)

                        Text(bmiCategory)
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundColor(badgeForeground)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(badgeBackground)
                            .cornerRadius(6)
                    }
                }

                Spacer()
            }

            // BMI Chart
            VStack(spacing: 6) {
                // Labels
                HStack(spacing: 0) {
                    Text("Underweight")
                        .frame(maxWidth: .infinity)
                    Text("Normal")
                        .frame(maxWidth: .infinity)
                    Text("Overweight")
                        .frame(maxWidth: .infinity)
                    Text("Obese")
                        .frame(maxWidth: .infinity)
                }
                .font(.system(size: 9))
                .foregroundColor(.secondary)

                // Gradient Bar with Indicator
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        // Colored Segments
                        HStack(spacing: 0) {
                            Rectangle().fill(bmiBlue).frame(width: geo.size.width * 0.25)
                            Rectangle().fill(bmiGreen).frame(width: geo.size.width * 0.25)
                            Rectangle().fill(bmiYellow).frame(width: geo.size.width * 0.25)
                            Rectangle().fill(bmiRed).frame(width: geo.size.width * 0.25)
                        }
                        .cornerRadius(5)

                        // Indicator
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 3, height: 18)
                            .cornerRadius(1.5)
                            .offset(x: geo.size.width * indicatorPosition - geo.size.width * 0.03)
                    }
                }
                .frame(height: 8)

                // Scale Labels
                GeometryReader { labelGeo in
                    ZStack(alignment: .leading) {
                        // Position each label at specific percentages
                        Text("15")
                            .position(x: labelGeo.size.width * 0.0, y: 10)

                        Text("18.5")
                            .position(x: labelGeo.size.width * 0.25, y: 10)

                        Text("25")
                            .position(x: labelGeo.size.width * 0.50, y: 10)

                        Text("30")
                            .position(x: labelGeo.size.width * 0.75, y: 10)

                        Text("35")
                            .position(x: labelGeo.size.width * 1.0, y: 10)
                    }
                }
                .frame(height: 20)
                .font(.system(size: 9, weight: .medium))
                .foregroundColor(.secondary)
            }
        }
        .padding(16)
        .background(cardBackground)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.purple.opacity(0.1), lineWidth: 1)
        )
    }
}
