# Results Page Refactoring Plan

## Overview
This document outlines the step-by-step plan to fix all issues with the Longevity Results page, moving from hardcoded/fake data to accurate, calculated results based on user quiz answers.

---

## Current Issues Identified

### 1. ❌ Math Logic is Inaccurate
- Location: `LongevityResultsView.swift:308-347`
- Problem: All questions scored the same way (0-4 × 25), doesn't account for reverse-scoring questions
- Impact: Overall score doesn't reflect true health status

### 2. ❌ Health Metrics are Hardcoded
- Location: `LongevityResultsView.swift:331-338`
- Problem: All 6 metrics have fixed scores regardless of user answers
- Impact: Results shown don't match what user actually answered

### 3. ❌ Score Cards are Hardcoded
- Location: `LongevityResultsView.swift:243-250`
- Problem: Lifestyle Balance (83), Physical Wellbeing (88), Mental Resilience (93) are fake
- Impact: Misleading information displayed to users

### 4. ❌ Brain/Body Age Calculation is Oversimplified
- Location: `LongevityResultsView.swift:328-329`
- Problem: Uses simple division that doesn't account for actual risk factors
- Impact: Age estimates are not scientifically meaningful

### 5. ✅ Chart Rendering is Correct
- Location: `LongevityResultsView.swift:575-701`
- Status: The radar chart geometry/math is accurate
- Issue: It's plotting correct data from wrong sources (hardcoded metrics)

---

## Step-by-Step Fix Plan

### **STEP 1: Add Question Metadata & Scoring Configuration**
**File**: `AssessmentData.swift` (NEW)

**Task**: Create a scoring configuration system that defines:
- Which questions map to which metrics
- Scoring weights for each answer option
- Reverse-scoring flags for questions like smoking/sitting

**Deliverable**:
```swift
struct QuestionScoring {
    let metric: HealthMetricType
    let weights: [Int] // Score for each option (0-4)
    let isReverseScored: Bool // For questions where lower index = better
}

enum HealthMetricType {
    case sleep, nutrition, physicalActivity, stress, hydration,
        substanceUse, socialHealth, sedentaryBehavior, mentalWellbeing
}
```

**Validation**:
- All 10 questions have scoring configuration
- Weights sum to meaningful ranges (0-100 per metric)

---

### **STEP 2: Implement Proper Scoring Algorithm**
**File**: `LongevityResultsView.swift` - `calculateResults()` function

**Task**: Replace simple scoring with weighted algorithm that:
- Maps each question to its metric
- Applies correct scoring (forward or reverse)
- Normalizes scores to 0-100 range
- Calculates metric-specific scores

**Deliverable**:
```swift
private func calculateResults() {
    var metricScores: [HealthMetricType: [Int]] = [:]

    for (questionId, answerIndex) in quizAnswers {
        let question = findQuestion(id: questionId)
        let scoring = getScoring(for: question)
        let score = scoring.isReverseScored
            ? (4 - answerIndex) * 25
            : answerIndex * 25

        metricScores[scoring.metric, default: []].append(score)
    }

    // Average scores per metric
    let finalMetrics = calculateAveragedMetrics(from: metricScores)
}
```

**Validation**:
- Each metric score reflects actual user answers
- Overall score is average of all metric scores
- Range is 0-100

---

### **STEP 3: Calculate Individual Health Metrics**
**File**: `LongevityResultsView.swift` - `calculateResults()` function

**Task**: Replace hardcoded metrics with dynamically calculated ones:
- Sleep Quality (from Q1)
- Nutrition (from Q2)
- Physical Activity (from Q3)
- Stress Level (from Q4)
- Hydration (from Q5) - NEW metric
- Substance Use (from Q6, Q7) - NEW metric (smoking + alcohol combined)
- Social Health (from Q8)
- Sedentary Behavior (from Q9) - NEW metric
- Mental Wellbeing (from Q10)

**Deliverable**:
```swift
let calculatedMetrics = [
    HealthMetric(
        name: "Sleep Quality",
        icon: "clock.fill",
        color: .green,
        score: metricScores[.sleep] ?? 70,
        description: getSleepDescription(answerIndex: sleepAnswer),
        rating: getRating(score: metricScores[.sleep] ?? 70)
    ),
    // ... similar for other metrics
]
```

**Validation**:
- All 8-9 metrics are calculated from actual answers
- Descriptions match selected options
- Ratings (Excellent/Good/Average/Poor) reflect scores

---

### **STEP 4: Fix Score Cards Calculation**
**File**: `LongevityResultsView.swift` - `scoreRowSection()` function

**Task**: Calculate the three score categories from actual metrics:
- **Lifestyle Balance**: Average of (Sleep + Nutrition + Hydration + Substance Use)
- **Physical Wellbeing**: Average of (Physical Activity + Sedentary Behavior)
- **Mental Resilience**: Average of (Stress + Social Health + Mental Wellbeing)

**Deliverable**:
```swift
private func calculateCategoryScores(metrics: [HealthMetric]) -> (lifestyle: Int, physical: Int, mental: Int) {
    let lifestyleScore = (metrics[0].score + metrics[1].score + metrics[4].score + metrics[5].score) / 4
    let physicalScore = (metrics[2].score + metrics[7].score) / 2
    let mentalScore = (metrics[3].score + metrics[6].score + metrics[8].score) / 3

    return (lifestyleScore, physicalScore, mentalScore)
}
```

**Validation**:
- Each category score is calculated from related metrics
- Scores change when user changes answers
- Range is 0-100

---

### **STEP 5: Improve Brain/Body Age Calculation**
**File**: `LongevityResultsView.swift` - `calculateResults()` function

**Task**: Replace simple division with scientifically-informed algorithm:
- Base age = chronological age
- Add years for risk factors (smoking, alcohol, sedentary, poor sleep)
- Subtract years for protective factors (exercise, good nutrition, social engagement)

**Algorithm**:
```swift
let baseAge = profile.age ?? 30

// Risk factors (add years)
var brainAgeOffset = 0
var bodyAgeOffset = 0

if smokingScore < 50 {
    brainAgeOffset += 5
    bodyAgeOffset += 8
}

if alcoholScore < 50 {
    brainAgeOffset += 2
    bodyAgeOffset += 3
}

if sedentaryScore < 50 {
    bodyAgeOffset += 4
}

if sleepScore < 50 {
    brainAgeOffset += 3
    bodyAgeOffset += 2
}

// Protective factors (subtract years)
if exerciseScore >= 80 {
    brainAgeOffset -= 2
    bodyAgeOffset -= 4
}

if nutritionScore >= 80 {
    brainAgeOffset -= 1
    bodyAgeOffset -= 3
}

if socialScore >= 80 {
    brainAgeOffset -= 2
}

let brainAge = baseAge + brainAgeOffset
let bodyAge = baseAge + bodyAgeOffset
```

**Validation**:
- Age offsets are within realistic range (-10 to +20 years)
- Different risk factors have appropriate impacts
- Brain and body ages can differ

---

### **STEP 6: Update Descriptions to Match Answers**
**File**: `LongevityResultsView.swift` - Helper functions

**Task**: Create functions that generate contextual descriptions based on actual selected options:

**Deliverable**:
```swift
private func getSleepDescription(answerIndex: Int) -> String {
    let answers = [
        "Very Short - 4-5 hours (Not enough)",
        "Short - 5-6 hours (Below recommended)",
        "Average - 6-7 hours (Getting close)",
        "Optimal - 7-8 hours (Perfect!)",
        "Long - 8+ hours (More than most need)"
    ]
    return "Based on \(answers[answerIndex]) of sleep"
}

private func getRating(score: Int) -> String {
    switch score {
    case 90...100: return "Excellent"
    case 75..<90: return "Very Good"
    case 60..<75: return "Good"
    case 40..<60: return "Fair"
    default: return "Needs Improvement"
    }
}
```

**Validation**:
- Each metric's description reflects user's actual answer
- Ratings correspond to score ranges
- Descriptions are helpful and actionable

---

### **STEP 7: Update Radar Chart to Use Real Data**
**File**: `LongevityResultsView.swift` - No changes needed to chart code

**Task**: Since the chart is already correctly plotting metrics array, just ensure:
- We're passing the calculated metrics (not hardcoded ones)
- Consider showing top 6 metrics instead of all 9 for cleaner view
- Or show all metrics in a larger chart

**Validation**:
- Chart shape changes when user answers differently
- Data points match the metric scores displayed
- Visual representation is accurate

---

### **STEP 8: Add Dynamic Recommendations**
**File**: `LongevityResultsView.swift` - NEW section

**Task**: Generate personalized insights based on lowest-scoring metrics:

**Deliverable**:
```swift
private func generateRecommendations(metrics: [HealthMetric]) -> [String] {
    let sortedMetrics = metrics.sorted { $0.score < $1.score }
    let weakestMetrics = sortedMetrics.prefix(3)

    return weakestMetrics.map { metric in
        switch metric.name {
        case "Sleep Quality":
            return "Improve sleep hygiene by maintaining a consistent bedtime and avoiding screens before sleep"
        case "Physical Activity":
            return "Aim for at least 150 minutes of moderate exercise per week"
        // ... more recommendations
        default:
            return "Focus on improving \(metric.name.lowercased()) for better longevity"
        }
    }
}
```

**Validation**:
- Recommendations are personalized to user's weakest areas
- Actionable and specific advice provided
- Changes when user changes answers

---

### **STEP 9: Add Percentile Calculations**
**File**: `LongevityResultsView.swift` - `AgeCard` update

**Task**: Calculate actual percentiles based on score:
- Score 90+ = 90th+ percentile
- Score 75-89 = 75th percentile
- Score 60-74 = 60th percentile
- Score 40-59 = 40th percentile
- Score <40 = Below 40th percentile

**Deliverable**:
```swift
private func calculatePercentile(score: Int) -> Int {
    switch score {
    case 95...100: return 98
    case 90..<95: return 95
    case 85..<90: return 85
    case 75..<85: return 75
    case 60..<75: return 60
    case 40..<60: return 40
    default: return 20
    }
}
```

**Validation**:
- Percentiles make sense relative to scores
- Higher score = higher percentile
- Realistic percentile ranges

---

### **STEP 10: Testing & Validation**
**File**: All modified files

**Task**: Comprehensive testing with different answer combinations:
1. **Test Case 1**: All optimal answers (index 4) → Should show excellent scores
2. **Test Case 2**: All poor answers (index 0) → Should show poor scores
3. **Test Case 3**: Mixed answers → Should show balanced results
4. **Test Case 4**: High smoking/alcohol → Should show older body age
5. **Test Case 5**: High exercise + good sleep → Should show younger body age

**Validation Checklist**:
- [ ] Overall score reflects answer quality
- [ ] All metric scores match their corresponding questions
- [ ] Descriptions reference actual selected options
- [ ] Brain/body age makes sense given answers
- [ ] Score cards (Lifestyle/Physical/Mental) are calculated correctly
- [ ] Radar chart matches the displayed metrics
- [ ] Percentiles are appropriate for scores
- [ ] No hardcoded values remain

---

## Implementation Order

1. ✅ **Step 1**: Add scoring configuration (Foundation)
2. ✅ **Step 2**: Implement proper scoring algorithm (Core logic)
3. ✅ **Step 3**: Calculate individual metrics (Data layer)
4. ✅ **Step 4**: Fix score cards (UI calculation)
5. ✅ **Step 5**: Improve age calculation (Algorithm refinement)
6. ✅ **Step 6**: Update descriptions (Personalization)
7. ✅ **Step 7**: Verify chart uses real data (Validation)
8. ✅ **Step 8**: Add recommendations (Feature addition)
9. ✅ **Step 9**: Add percentiles (Enhancement)
10. ✅ **Step 10**: Comprehensive testing (QA)

---

## Success Criteria

✅ All displayed data is calculated from user inputs (no hardcoded values)
✅ Scoring algorithm accounts for question types (forward/reverse)
✅ Brain/body age estimates are scientifically reasonable
✅ Radar chart accurately reflects calculated metrics
✅ All descriptions match user's actual answers
✅ Results change meaningfully when answers change
✅ No calculation errors or edge case failures

---

## Notes

- Each step should be built and tested independently
- Commit after each successful step with descriptive message
- Preserve UI/UX, only change calculation logic
- Maintain backward compatibility with existing data structures
- Add comments explaining scoring rationale
