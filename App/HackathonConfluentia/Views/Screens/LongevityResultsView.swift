import SwiftUI

struct LongevityResultsView: View {
    let profile: UserProfile
    let quizAnswers: [UUID: Int]
    @Environment(\.dismiss) private var dismiss
    
    // Calculated State
    @State private var result: LongevityResult?
    @State private var animateCharts = false
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 24) {
                // Header
                headerSection
                
                if let result = result {
                    // Content Sections
                    resultContent(result)
                } else {
                    ProgressView()
                        .padding(.top, 50)
                }
            }
            .padding(.bottom, 40)
        }
        .background(Color(.systemGray6).opacity(0.3)) // Light gray background for the whole screen
        .navigationBarHidden(true)
        .onAppear {
            calculateResults()
            withAnimation(.easeOut(duration: 1.0)) {
                animateCharts = true
            }
        }
    }
    
    // MARK: - Sections
    
    private var headerSection: some View {
        HStack {
            Button(action: { dismiss() }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.primary)
                    .padding(12)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
            }
            
            Spacer()
            
            Text("Your Results")
                .font(.system(size: 18, weight: .bold))
            
            Spacer()
            
            // Invisible button to balance layout
            Color.clear.frame(width: 44, height: 44)
        }
        .padding(.horizontal)
        .padding(.top, 16)
    }
    
    private func resultContent(_ result: LongevityResult) -> some View {
        Group {
            // Main Score Circle
            mainScoreSection(result)
            
            // Age Cards
            ageCardsSection(result)
            
            // Insights List
            insightsSection(result)
            
            // CTA Button
            ctaButton
            
            // Score Row
            scoreRowSection(result)
            
            // Did You Know
            tipCard
            
            // Health Metrics & Radar Chart
            metricsSection(result)
        }
    }
    
    private func mainScoreSection(_ result: LongevityResult) -> some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                Label("Longevity Score", systemImage: "sparkles")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                
                Label("Transform", systemImage: "star.fill")
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            
            Text("Your Health Assessment\nResults")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Based on 14 biomarkers analyzed with AI precision")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            ZStack {
                // Background Ring
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 20)
                    .frame(width: 200, height: 200)
                
                // Progress Ring
                Circle()
                    .trim(from: 0, to: animateCharts ? CGFloat(result.overallScore) / 100 : 0)
                    .stroke(
                        LinearGradient(
                            colors: [.blue, .cyan],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        style: StrokeStyle(lineWidth: 20, lineCap: .round)
                    )
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(-90))
                
                VStack(spacing: 4) {
                    Text("\(result.overallScore)")
                        .font(.system(size: 48, weight: .heavy))
                    Text("/100")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Overall")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.top, 20)
            
            // Legend
            HStack(spacing: 16) {
                LegendItem(color: .orange, text: "Overall")
                LegendItem(color: .cyan, text: "Brain")
                LegendItem(color: .purple, text: "Body")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(24)
        .padding(.horizontal)
    }
    
    private func ageCardsSection(_ result: LongevityResult) -> some View {
        HStack(spacing: 16) {
            // Brain Age Card
            AgeCard(
                icon: "brain.head.profile",
                iconGradient: [.purple, .pink],
                title: "Brain Age",
                age: result.brainAge,
                difference: result.brainAgeDifference,
                percentile: 60,
                percentileColor: .purple
            )
            
            // Body Age Card
            AgeCard(
                icon: "heart.fill",
                iconGradient: [.blue, .cyan],
                title: "Body Age",
                age: result.bodyAge,
                difference: result.bodyAgeDifference,
                percentile: 40,
                percentileColor: .blue
            )
        }
        .padding(.horizontal)
    }
    
    private func insightsSection(_ result: LongevityResult) -> some View {
        VStack(spacing: 16) {
            Text("Your Longevity Insights")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Snapshot of your biological vs chronological age")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 12) {
                DeltaBadge(icon: "brain", text: "Brain Δ: \(result.brainAgeDifference > 0 ? "+" : "")\(result.brainAgeDifference)y")
                DeltaBadge(icon: "figure.arms.open", text: "Body Δ: \(result.bodyAgeDifference > 0 ? "+" : "")\(result.bodyAgeDifference)y")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(spacing: 0) {
                InsightRow(title: "Chronological Age", value: "\(result.chronologicalAge)y")
                Divider()
                InsightRow(title: "Biological Age (Brain)", value: "\(result.brainAge)y")
                Divider()
                InsightRow(title: "Biological Age (Body)", value: "\(result.bodyAge)y")
            }
            .background(Color.white)
            .cornerRadius(16)
        }
        .padding(.horizontal)
    }
    
    private var ctaButton: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: "play.fill")
                Text("Start My 7-Day Care Plan")
                Image(systemName: "arrow.right")
            }
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
        }
        .padding(.horizontal)
    }
    
    private func scoreRowSection(_ result: LongevityResult) -> some View {
        HStack(spacing: 12) {
            ScoreCard(icon: "clock", score: 83, title: "Lifestyle\nBalance", color: .blue)
            ScoreCard(icon: "waveform.path.ecg", score: 88, title: "Physical\nWellbeing", color: .orange)
            ScoreCard(icon: "shield", score: 93, title: "Mental\nResilience", color: .green)
        }
        .padding(.horizontal)
    }
    
    private var tipCard: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: "lightbulb.fill")
                .font(.system(size: 24))
                .foregroundColor(.blue)
                .padding(12)
                .background(Color.white)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Did You Know?")
                    .font(.headline)
                Text("Strong social connections add up to 7 years to life expectancy")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(colors: [Color.blue.opacity(0.1), Color.purple.opacity(0.05)], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(16)
        .padding(.horizontal)
    }
    
    private func metricsSection(_ result: LongevityResult) -> some View {
        VStack(spacing: 24) {
            HStack {
                Text("Your Health Metrics")
                    .font(.headline)
                Spacer()
                Label("6 Areas Assessed", systemImage: "chart.bar")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            // Radar Chart Placeholder
            RadarChartView(metrics: result.metrics)
                .frame(height: 300)
            
            // Detailed Metric Cards
            VStack(spacing: 16) {
                ForEach(result.metrics) { metric in
                    MetricDetailCard(metric: metric)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(24)
        .padding(.horizontal)
    }
    
    // MARK: - Logic
    
    private func calculateResults() {
        // Simple Logic:
        // Base score starts at 50
        // Each "good" answer adds points
        // Good answers are usually index 2, 3, 4 (Average, Optimal, etc.)
        
        var scoreAccumulator = 0
        var totalPossible = 0
        
        for (_, answerIndex) in quizAnswers {
            // Assuming options 3 and 4 (indices 2, 3, 4) are better
            // 0: Bad, 1: Poor, 2: Okay, 3: Good, 4: Excellent
            scoreAccumulator += answerIndex * 25 // 0 to 100 per question
            totalPossible += 100
        }
        
        let avgScore = quizAnswers.isEmpty ? 70 : (scoreAccumulator / quizAnswers.count)
        let age = profile.age ?? 30
        
        // Dummy offsets
        let brainOffset = (100 - avgScore) / 10 // Lower score = higher age
        let bodyOffset = (100 - avgScore) / 5
        
        let calculatedMetrics = [
            HealthMetric(name: "Sleep Quality", icon: "clock.fill", color: .green, score: 100, description: "Based on Optimal - 7-8 hours (Perfect!) hours of sleep", rating: "Excellent"),
            HealthMetric(name: "Physical Activity", icon: "waveform.path.ecg", color: .orange, score: 60, description: "Exercising <30 minutes per session, Frequently", rating: "Good"),
            HealthMetric(name: "Nutrition", icon: "apple.logo", color: .yellow, score: 70, description: "Consuming 8+ servings of fruits/vegetables", rating: "Good"),
            HealthMetric(name: "Stress Level", icon: "bolt.fill", color: .green, score: 90, description: "Managing stress levels effectively", rating: "Excellent"),
            HealthMetric(name: "Social Health", icon: "person.2.fill", color: .blue, score: 85, description: "Strong social connections maintained", rating: "Excellent"),
            HealthMetric(name: "Mental Fitness", icon: "brain", color: .purple, score: 95, description: "Regular mental stimulation", rating: "Excellent")
        ]
        
        self.result = LongevityResult(
            overallScore: avgScore,
            chronologicalAge: age,
            brainAge: age + brainOffset,
            bodyAge: age + bodyOffset,
            metrics: calculatedMetrics
        )
    }
}

// MARK: - Supporting Views

struct AgeCard: View {
    let icon: String
    let iconGradient: [Color]
    let title: String
    let age: Int
    let difference: Int
    let percentile: Int
    let percentileColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundStyle(
                        LinearGradient(colors: iconGradient, startPoint: .top, endPoint: .bottom)
                    )
                    .padding(10)
                    .background(iconGradient[0].opacity(0.1))
                    .cornerRadius(12)
                
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .lastTextBaseline, spacing: 4) {
                    Text("\(age)")
                        .font(.system(size: 32, weight: .bold))
                    Text("years")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                HStack(spacing: 4) {
                    Image(systemName: difference > 0 ? "arrow.up.right" : "arrow.down.right")
                    Text("\(abs(difference)) years \(difference > 0 ? "older" : "younger")")
                }
                .font(.caption)
                .foregroundColor(difference > 0 ? .red : .green)
                .fontWeight(.medium)
            }
            
            HStack {
                Text("Percentile")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Spacer()
                Text("\(percentile)th")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(percentileColor)
            }
            .padding(.top, 8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

struct LegendItem: View {
    let color: Color
    let text: String
    
    var body: some View {
        HStack(spacing: 6) {
            Circle()
                .fill(color)
                .frame(width: 8, height: 8)
            Text(text)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct DeltaBadge: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
            Text(text)
        }
        .font(.caption)
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Color(.systemGray6))
        .cornerRadius(20)
    }
}

struct InsightRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .padding()
    }
}

struct ScoreCard: View {
    let icon: String
    let score: Int
    let title: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 20))
                .foregroundColor(color)
            
            Text("\(score)")
                .font(.system(size: 24, weight: .bold))
            
            Text(title)
                .font(.caption)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
            
            Capsule()
                .fill(color)
                .frame(height: 4)
                .frame(maxWidth: 40)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

struct MetricDetailCard: View {
    let metric: HealthMetric
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: metric.icon)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(metric.color)
                    .cornerRadius(10)
                
                Spacer()
                
                Text(metric.rating)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(metric.color)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(metric.name)
                    .font(.headline)
                
                Text(metric.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            
            HStack(alignment: .bottom) {
                Text("\(metric.score)")
                    .font(.system(size: 24, weight: .bold))
                Text("%")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 4)
                
                Spacer()
                
                CircularProgressMini(score: metric.score, color: metric.color)
            }
        }
        .padding()
        .background(metric.color.opacity(0.05))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(metric.color.opacity(0.2), lineWidth: 1)
        )
    }
}

struct CircularProgressMini: View {
    let score: Int
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.2), lineWidth: 4)
                .frame(width: 40, height: 40)
            
            Circle()
                .trim(from: 0, to: CGFloat(score) / 100)
                .stroke(color, style: StrokeStyle(lineWidth: 4, lineCap: .round))
                .frame(width: 40, height: 40)
                .rotationEffect(.degrees(-90))
            
            Text("\(score)")
                .font(.system(size: 10, weight: .bold))
        }
    }
}

struct RadarChartView: View {
    let metrics: [HealthMetric]
    
    var body: some View {
        GeometryReader { geometry in
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
            let radius = min(geometry.size.width, geometry.size.height) / 2 * 0.7
            let angleStep = 2 * .pi / Double(metrics.count)
            
            ZStack {
                // Background Grids
                ForEach([0.2, 0.4, 0.6, 0.8, 1.0], id: \.self) { scale in
                    RadarPolygon(count: metrics.count, radius: radius * scale, center: center)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                }
                
                // Data Polygon
                RadarDataShape(metrics: metrics, radius: radius, center: center, angleStep: angleStep)
                    .fill(
                        LinearGradient(
                            colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                
                RadarDataShape(metrics: metrics, radius: radius, center: center, angleStep: angleStep)
                    .stroke(Color.blue, lineWidth: 2)
                
                // Labels & Points
                labelsAndPoints(center: center, radius: radius, angleStep: angleStep)
            }
        }
    }
    
    private func labelsAndPoints(center: CGPoint, radius: CGFloat, angleStep: Double) -> some View {
        ForEach(0..<metrics.count, id: \.self) { i in
            // Calculate angle
            let angle = angleStep * Double(i) - .pi / 2
            let angleCGFloat = CGFloat(angle)
            
            // Calculate point position
            let score = CGFloat(metrics[i].score) / 100.0
            let point = CGPoint(
                x: center.x + radius * score * cos(angleCGFloat),
                y: center.y + radius * score * sin(angleCGFloat)
            )
            
            // Calculate label position
            let labelPoint = CGPoint(
                x: center.x + (radius + 25) * cos(angleCGFloat),
                y: center.y + (radius + 25) * sin(angleCGFloat)
            )
            
            ZStack {
                // Dot
                Circle()
                    .fill(metrics[i].color)
                    .frame(width: 8, height: 8)
                    .position(point)
                
                // Icon Label
                Image(systemName: metrics[i].icon)
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                    .position(labelPoint)
            }
        }
    }
}

struct RadarPolygon: Shape {
    let count: Int
    let radius: CGFloat
    let center: CGPoint
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let angleStep = 2 * .pi / Double(count)
        
        for i in 0..<count {
            let angle = angleStep * Double(i) - .pi / 2
            let angleCGFloat = CGFloat(angle)
            let point = CGPoint(
                x: center.x + radius * cos(angleCGFloat),
                y: center.y + radius * sin(angleCGFloat)
            )
            
            if i == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }
        path.closeSubpath()
        return path
    }
}

struct RadarDataShape: Shape {
    let metrics: [HealthMetric]
    let radius: CGFloat
    let center: CGPoint
    let angleStep: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for i in 0..<metrics.count {
            let angle = angleStep * Double(i) - .pi / 2
            let angleCGFloat = CGFloat(angle)
            let score = CGFloat(metrics[i].score) / 100.0
            let point = CGPoint(
                x: center.x + radius * score * cos(angleCGFloat),
                y: center.y + radius * score * sin(angleCGFloat)
            )
            
            if i == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }
        path.closeSubpath()
        return path
    }
}

// MARK: - Models

struct LongevityResult {
    let overallScore: Int
    let chronologicalAge: Int
    let brainAge: Int
    let bodyAge: Int
    let metrics: [HealthMetric]
    
    var brainAgeDifference: Int { brainAge - chronologicalAge }
    var bodyAgeDifference: Int { bodyAge - chronologicalAge }
}

struct HealthMetric: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    let color: Color
    let score: Int
    let description: String
    let rating: String
}
