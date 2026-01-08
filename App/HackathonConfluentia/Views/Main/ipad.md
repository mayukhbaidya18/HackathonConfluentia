Here are the official Apple documentation links (and the most relevant sections of those docs) that talk about design principles and best practices for iPad / iPadOS UI, especially for adapting an iPhone-designed app to iPad:

📘 1. Apple Human Interface Guidelines (HIG) — Core Design Principles

This is the main design resource Apple provides for building great apps across all Apple platforms, including iPad. It covers clarity, depth, layout, adaptivity, and more.
🔗 Human Interface Guidelines (HIG) – Apple Developer
👉 https://developer.apple.com/design/human-interface-guidelines
 
Apple Developer

Within HIG you’ll want to pay special attention to Apple’s guidelines on layout, adaptivity, and platform-specific patterns.

📱 2. Designing for iOS (Includes iPad Considerations)

This section of HIG talks about fundamentals of adaptive UI and how to start designing apps that work on both iPhone and iPad.
🔗 Designing for iOS – Apple Developer
👉 https://developer.apple.com/design/human-interface-guidelines/designing-for-ios/
 
Apple Developer

➗ 3. Split Views — iPad-Specific Layout Pattern

Split views are critical for iPad UIs (e.g., Mail, Notes style layouts).
🔗 Split Views – HIG
👉 https://developer.apple.com/design/human-interface-guidelines/split-views/
 
Apple Developer

🧩 4. Multitasking — iPad Multitasking Guidelines

iPad supports Slide Over, Split View, and multiple windows, which your app needs to support.
🔗 Multitasking – HIG
👉 https://developer.apple.com/design/human-interface-guidelines/multitasking/
 
Apple Developer

This is especially important since on iPad your app may not always be full screen and should adapt to different widths and sizes.

📐 5. Layout Guidelines

These cover spacing, adaptive layouts, and how UI should adapt as the screen grows (tablet + multitasking + orientation changes).
🔗 Layout – HIG
👉 https://developer.apple.com/design/human-interface-guidelines/layout/
 
Apple Developer

🎨 6. Apple Design Resources (Templates for mockups)

Useful if you want iPad UI templates, icons, and design files to plan your redesign.
🔗 Design Resources
👉 https://developer.apple.com/design/resources/
 
Apple Developer

🧠 Bonus — WWDC & Videos on Design for iPad

These videos walk through design patterns and multitasking adaptation:
🔗 WWDC20 – Designed for iPad
👉 https://developer.apple.com/videos/play/wwdc2020/10206/
 
Apple Developer

🔗 Build for iPad – WWDC20
👉 https://developer.apple.com/la/videos/play/wwdc2020/10105/
 
Apple Developer

📌 Best Sections to Read First (to adapt your iPhone app)
What to read	Why it’s important
HIG – Layout & Adaptivity	Understand adaptive UI & how elements resize/reflow
Split Views	For master-detail / side panels on iPad
Multitasking	To support Split View & Slide Over
Designing for iOS	Overall principles that apply to iPad too
WWDC videos	Practical examples of iPad-first design
🧠 Tips for Testing on iPad After Reading Docs

Since you’re testing in Playgrounds on iPad:

✔ Make sure your UI supports dynamic size classes (horizontalSizeClass, verticalSizeClass). 
Reddit

✔ Use adaptive containers like NavigationSplitView (SwiftUI) or UISplitViewController (UIKit) for iPad layout.
✔ Avoid assuming fixed width or iPhone-like navigation patterns.
✔ Test in Split View / Slide Over / multitasking modes.