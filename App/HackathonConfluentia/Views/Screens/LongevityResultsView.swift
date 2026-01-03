import SwiftUI

struct LongevityResultsView: View {
    let profile: UserProfile
    let quizAnswers: [UUID: Int]
    let onRetakeAssessment: (() -> Void)?
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

            // Step 9: Personalized Recommendations
            recommendationsSection

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
        // Calculate percentiles based on mental and physical scores
        let brainPercentile = calculatePercentile(score: result.mentalScore)
        let bodyPercentile = calculatePercentile(score: result.physicalScore)

        return HStack(spacing: 16) {
            // Brain Age Card
            AgeCard(
                icon: "brain.head.profile",
                iconGradient: [.purple, .pink],
                title: "Brain Age",
                age: result.brainAge,
                difference: result.brainAgeDifference,
                percentile: brainPercentile,
                percentileColor: .purple
            )

            // Body Age Card
            AgeCard(
                icon: "heart.fill",
                iconGradient: [.blue, .cyan],
                title: "Body Age",
                age: result.bodyAge,
                difference: result.bodyAgeDifference,
                percentile: bodyPercentile,
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
        Button(action: {
            onRetakeAssessment?()
        }) {
            HStack {
                Image(systemName: "arrow.clockwise")
                Text("Retake Assessment")
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
            ScoreCard(icon: "clock", score: result.lifestyleScore, title: "Lifestyle\nBalance", color: .blue)
            ScoreCard(icon: "waveform.path.ecg", score: result.physicalScore, title: "Physical\nWellbeing", color: .orange)
            ScoreCard(icon: "shield", score: result.mentalScore, title: "Mental\nResilience", color: .green)
        }
        .padding(.horizontal)
    }

    // Step 9: Add personalized recommendations based on lowest scores
    private var recommendationsSection: some View {
        VStack(spacing: 16) {
            Text("Personalized Recommendations")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)

            if let result = result {
                ForEach(generateRecommendations(result: result), id: \.self) { recommendation in
                    HStack(spacing: 12) {
                        Image(systemName: "lightbulb.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.orange)
                            .frame(width: 32)

                        Text(recommendation)
                            .font(.subheadline)
                            .foregroundColor(.primary)

                        Spacer()
                    }
                    .padding()
                    .background(Color.orange.opacity(0.1))
                    .cornerRadius(12)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .padding(.horizontal)
    }

    // Step 9: Generate actionable recommendations based on weakest metrics
    private func generateRecommendations(result: LongevityResult) -> [String] {
        // Sort metrics by score (lowest first)
        let weakestMetrics = result.metrics.sorted { $0.score < $1.score }.prefix(3)

        return weakestMetrics.map { metric in
            switch metric.name {
            case "Sleep Quality":
                return "Aim for 7-8 hours of sleep. Maintain a consistent bedtime and avoid screens before sleep for better rest."
            case "Nutrition":
                return "Increase your vegetable intake to 5+ servings daily. Include colorful fruits and vegetables for better nutrition."
            case "Physical Activity":
                return "Target 150 minutes of moderate exercise per week. Even 30 minutes of daily walking can significantly improve your health."
            case "Stress Management":
                return "Practice stress-reduction techniques like deep breathing, meditation, or yoga. Even 5 minutes daily can help."
            case "Hydration":
                return "Drink at least 8 glasses of water daily. Carry a water bottle and set reminders to stay hydrated throughout the day."
            case "Substance Use":
                return "Consider reducing or eliminating smoking and alcohol. These substances accelerate aging and reduce life expectancy."
            case "Social Health":
                return "Strengthen social connections by scheduling regular time with friends and family. Join clubs or groups to meet new people."
            case "Sedentary Behavior":
                return "Reduce sitting time by taking breaks every hour. Consider a standing desk or walking meetings to stay active."
            case "Mental Wellbeing":
                return "Practice gratitude journaling or mindfulness. Engage in activities that bring you joy and purpose daily."
            default:
                return "Focus on improving \(metric.name.lowercased()) for better overall health and longevity."
            }
        }
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
        // Step 3: Calculate metrics with actual answer descriptions
        var metricScores: [HealthMetricType: [Int]] = [:]
        var metricAnswers: [HealthMetricType: [(answer: String, score: Int)]] = [:]
        var totalScore = 0
        var questionCount = 0

        // Get question IDs in order
        let questions = AssessmentData.questions
        let scoringConfigs = AssessmentData.scoringConfigurations

        for (questionIndex, question) in questions.enumerated() {
            guard let answerIndex = quizAnswers[question.id] else { continue }

            // Find the scoring configuration for this question
            let config = scoringConfigs[questionIndex]
            let selectedAnswer = question.options[answerIndex]

            // Calculate score based on weights
            let score: Int
            if config.isReverseScored {
                // For reverse scored: index 0 = best (100), index 4 = worst (0)
                score = config.weights[(4 - answerIndex)]
            } else {
                // For normal scored: index 0 = worst (0), index 4 = best (100)
                score = config.weights[answerIndex]
            }

            // Add score to the appropriate metric
            metricScores[config.metric, default: []].append(score)
            metricAnswers[config.metric, default: []].append((selectedAnswer, score))

            // Add to total
            totalScore += score
            questionCount += 1
        }

        // Calculate overall average score
        let avgScore = questionCount > 0 ? (totalScore / questionCount) : 70
        let age = profile.age ?? 30

        // Calculate individual metric scores with personalized descriptions
        var calculatedMetrics: [HealthMetric] = []

        // Process each metric type
        for (metricType, answers) in metricAnswers {
            let scores = answers.map { $0.score }
            let avgMetricScore = scores.reduce(0, +) / scores.count

            // Build personalized description from actual answers
            let description = buildDescriptionForMetric(metricType, answers: answers)

            let metric = HealthMetric(
                name: metricType.displayName,
                icon: metricType.icon,
                color: metricType.color,
                score: avgMetricScore,
                description: description,
                rating: getRating(score: avgMetricScore)
            )

            calculatedMetrics.append(metric)
        }

        // Sort metrics by score for better visualization
        calculatedMetrics.sort { $0.score > $1.score }

        // Step 4: Calculate category scores from actual metrics
        let categoryScores = calculateCategoryScores(metricScores: metricScores)

        // Step 5: Calculate scientifically-informed brain and body age
        let ageCalculations = calculateBiologicalAge(
            baseAge: age,
            metricScores: metricScores
        )

        self.result = LongevityResult(
            overallScore: avgScore,
            chronologicalAge: age,
            brainAge: ageCalculations.brainAge,
            bodyAge: ageCalculations.bodyAge,
            metrics: calculatedMetrics,
            lifestyleScore: categoryScores.lifestyle,
            physicalScore: categoryScores.physical,
            mentalScore: categoryScores.mental
        )
    }

    // Step 5: Calculate biological age based on risk factors
    private func calculateBiologicalAge(baseAge: Int, metricScores: [HealthMetricType: [Int]]) -> (brainAge: Int, bodyAge: Int) {
        var brainAgeOffset = 0
        var bodyAgeOffset = 0

        // Helper to get score for a metric
        func getScore(_ metric: HealthMetricType) -> Int {
            guard let scores = metricScores[metric], !scores.isEmpty else {
                return 70 // Default if not answered
            }
            return scores.reduce(0, +) / scores.count
        }

        // Get individual metric scores
        let sleepScore = getScore(.sleep)
        let exerciseScore = getScore(.physicalActivity)
        let nutritionScore = getScore(.nutrition)
        let stressScore = getScore(.stress)
        let substanceScore = getScore(.substanceUse)
        let sedentaryScore = getScore(.sedentaryBehavior)
        let socialScore = getScore(.socialHealth)

        // ===== RISK FACTORS (Add years) =====

        // Smoking: Major impact on both brain and body
        if substanceScore < 25 {
            // Smokes frequently
            brainAgeOffset += 8
            bodyAgeOffset += 12
        } else if substanceScore < 50 {
            // Smokes occasionally or quit recently
            brainAgeOffset += 4
            bodyAgeOffset += 6
        } else if substanceScore < 75 {
            // Quit long ago
            brainAgeOffset += 1
            bodyAgeOffset += 2
        }

        // Poor Sleep: Affects brain function and body health
        if sleepScore < 40 {
            // Very poor sleep
            brainAgeOffset += 5
            bodyAgeOffset += 4
        } else if sleepScore < 60 {
            // Below average sleep
            brainAgeOffset += 3
            bodyAgeOffset += 2
        }

        // High Stress: Damages brain and accelerates aging
        if stressScore < 40 {
            // Very high stress
            brainAgeOffset += 5
            bodyAgeOffset += 3
        } else if stressScore < 60 {
            // Moderate stress
            brainAgeOffset += 2
            bodyAgeOffset += 1
        }

        // Sedentary Behavior: Hurts physical health
        if sedentaryScore < 40 {
            // Very sedentary
            bodyAgeOffset += 5
        } else if sedentaryScore < 60 {
            // Below average activity
            bodyAgeOffset += 3
        }

        // Poor Nutrition: Affects overall health
        if nutritionScore < 40 {
            bodyAgeOffset += 4
        } else if nutritionScore < 60 {
            bodyAgeOffset += 2
        }

        // ===== PROTECTIVE FACTORS (Subtract years) =====

        // Regular Exercise: Strong protective effect
        if exerciseScore >= 90 {
            // Very active/athlete
            brainAgeOffset -= 3
            bodyAgeOffset -= 6
        } else if exerciseScore >= 75 {
            // Active
            brainAgeOffset -= 2
            bodyAgeOffset -= 4
        } else if exerciseScore >= 60 {
            // Moderate exercise
            brainAgeOffset -= 1
            bodyAgeOffset -= 2
        }

        // Good Sleep: Restorative and protective
        if sleepScore >= 90 {
            // Optimal sleep
            brainAgeOffset -= 3
            bodyAgeOffset -= 2
        } else if sleepScore >= 75 {
            // Good sleep
            brainAgeOffset -= 1
            bodyAgeOffset -= 1
        }

        // Excellent Nutrition: Supports brain and body health
        if nutritionScore >= 90 {
            brainAgeOffset -= 2
            bodyAgeOffset -= 4
        } else if nutritionScore >= 75 {
            brainAgeOffset -= 1
            bodyAgeOffset -= 2
        }

        // Low Stress: Preserves cognitive function
        if stressScore >= 90 {
            brainAgeOffset -= 3
            bodyAgeOffset -= 2
        } else if stressScore >= 75 {
            brainAgeOffset -= 1
            bodyAgeOffset -= 1
        }

        // Strong Social Connections: Protective for brain
        if socialScore >= 90 {
            brainAgeOffset -= 3
        } else if socialScore >= 75 {
            brainAgeOffset -= 1
        }

        // Not Sedentary: Maintains physical health
        if sedentaryScore >= 75 {
            bodyAgeOffset -= 2
        }

        // Clean Living (no smoking/drinking): Significant benefit
        if substanceScore >= 90 {
            brainAgeOffset -= 2
            bodyAgeOffset -= 3
        }

        // Ensure offsets stay within realistic bounds
        brainAgeOffset = max(-10, min(20, brainAgeOffset))
        bodyAgeOffset = max(-10, min(25, bodyAgeOffset))

        let brainAge = baseAge + brainAgeOffset
        let bodyAge = baseAge + bodyAgeOffset

        return (brainAge, bodyAge)
    }

    // Step 4: Calculate the three category scores
    private func calculateCategoryScores(metricScores: [HealthMetricType: [Int]]) -> (lifestyle: Int, physical: Int, mental: Int) {
        // Lifestyle Balance: Average of (Sleep + Nutrition + Hydration + Substance Use)
        let lifestyleMetrics: [HealthMetricType] = [.sleep, .nutrition, .hydration, .substanceUse]
        let lifestyleValues = lifestyleMetrics.compactMap { metricScores[$0] }.flatMap { $0 }
        let lifestyleScore = lifestyleValues.isEmpty ? 70 : (lifestyleValues.reduce(0, +) / lifestyleValues.count)

        // Physical Wellbeing: Average of (Physical Activity + Sedentary Behavior)
        let physicalMetrics: [HealthMetricType] = [.physicalActivity, .sedentaryBehavior]
        let physicalValues = physicalMetrics.compactMap { metricScores[$0] }.flatMap { $0 }
        let physicalScore = physicalValues.isEmpty ? 70 : (physicalValues.reduce(0, +) / physicalValues.count)

        // Mental Resilience: Average of (Stress + Social Health + Mental Wellbeing)
        let mentalMetrics: [HealthMetricType] = [.stress, .socialHealth, .mentalWellbeing]
        let mentalValues = mentalMetrics.compactMap { metricScores[$0] }.flatMap { $0 }
        let mentalScore = mentalValues.isEmpty ? 70 : (mentalValues.reduce(0, +) / mentalValues.count)

        return (lifestyleScore, physicalScore, mentalScore)
    }

    // Step 3: Build personalized description based on actual user answers
    private func buildDescriptionForMetric(_ metricType: HealthMetricType, answers: [(answer: String, score: Int)]) -> String {
        // Extract the answer text (before the dash)
        let answerTexts = answers.map { answer -> String in
            // Split by " - " and take the first part (the category)
            let components = answer.answer.components(separatedBy: " - ")
            return components.first ?? answer.answer
        }

        let score = answers.map { $0.score }.reduce(0, +) / answers.count

        // Generate contextual description based on metric type
        switch metricType {
        case .sleep:
            return "Sleep pattern: \(answerTexts.joined(separator: ", "))"
        case .nutrition:
            return "Vegetable intake: \(answerTexts.joined(separator: ", "))"
        case .physicalActivity:
            return "Exercise frequency: \(answerTexts.joined(separator: ", "))"
        case .stress:
            return "Stress level: \(answerTexts.joined(separator: ", "))"
        case .hydration:
            return "Water intake: \(answerTexts.joined(separator: ", "))"
        case .substanceUse:
            // Special handling for substance use (combines smoking + alcohol)
            if answerTexts.count > 1 {
                return "Habits: \(answerTexts.joined(separator: ", "))"
            } else {
                return "Substance use: \(answerTexts.first ?? "")"
            }
        case .socialHealth:
            return "Social activity: \(answerTexts.joined(separator: ", "))"
        case .sedentaryBehavior:
            return "Daily sitting time: \(answerTexts.joined(separator: ", "))"
        case .mentalWellbeing:
            return "Happiness level: \(answerTexts.joined(separator: ", "))"
        }
    }

    // Helper: Get rating based on score
    private func getRating(score: Int) -> String {
        switch score {
        case 90...100: return "Excellent"
        case 75..<90: return "Very Good"
        case 60..<75: return "Good"
        case 40..<60: return "Fair"
        default: return "Needs Improvement"
        }
    }

    // Step 9: Calculate percentile based on score
    private func calculatePercentile(score: Int) -> Int {
        switch score {
        case 98...100: return 99
        case 95..<98: return 98
        case 90..<95: return 95
        case 85..<90: return 85
        case 75..<85: return 75
        case 60..<75: return 60
        case 40..<60: return 40
        default: return 20
        }
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

    // Step 4: Category scores calculated from actual metrics
    let lifestyleScore: Int
    let physicalScore: Int
    let mentalScore: Int

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
