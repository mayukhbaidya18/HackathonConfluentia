# Smart Food Recommendation System for Health  
**Hackathon Project – Confluentia**  

## Problem  
People with chronic health conditions such as diabetes, hypertension, and thyroid disorders struggle to know which foods are safe or harmful for their condition. Most nutrition apps are too generic and fail to provide personalized, disease-specific insights. This creates confusion and can even lead to harmful food choices.  

## Solution  
We built a SwiftUI iOS app that leverages Apple’s **Foundation Models (Apple Intelligence)** to provide personalized food recommendations.  

How it works:  
1. The user selects or inputs their health condition.  
2. The app asks the user to enter a food item they want to eat.  
3. The query is passed to Apple’s on-device Foundation Model.  
4. The app returns:  
   - **Recommendation** → “Recommended” or “Avoid”  
   - **Reason** → An explanation of why (e.g., glycemic index for diabetes, sodium for hypertension, etc.).  

This ensures fast, private, and AI-powered insights without sending sensitive data to external servers.  

## Tech Stack  
- Frontend: SwiftUI (iOS 26 Foundation Models support)  
- AI: Apple Foundation Models (`Foundation` + `AI` frameworks)  
- Data Source: Apple’s built-in on device intelligence and prompt engineering  

## Repo Structure  
- **SmartFoodApp** → SwiftUI project code  
- **screenshots** → Screenshots of the main user flow (disease input, food input, result)  
- **README.md** → Documentation  

## How to Run  
1. Clone or download the repository.  
2. Open the **SmartFoodApp.xcodeproj** in Xcode 26+ (with iOS 26 SDK).  
3. Build and run on the iOS simulator or a physical iPhone running iOS 26+.  

## Demo  
- Screenshots are available in the `/screenshots` folder.  
- It shows the:  
  - Disease input screen  
  - Food input screen  
  - Output with “Recommended/Avoid” + explanation  

## AI Tools Used  
- **Apple Foundation Models (iOS 18 / iOS 26)**  
- Used for reasoning over food-health queries in natural language.  
- Benefits:  
  - On-device and privacy-preserving  
  - No need for external API calls  
  - Optimized for Apple devices  

## Next Steps  
- Expand the system to provide **meal planning** instead of just single-food queries.  
- Support multiple simultaneous conditions (e.g., diabetes + hypertension).  
- Integrate with **HealthKit** to suggest foods based on a user’s biomarker data.  
- Add support for multiple languages.

  
