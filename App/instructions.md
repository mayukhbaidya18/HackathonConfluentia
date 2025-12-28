# Health Specialists App - Requirements Document

## 1. App Overview

This is a simple health information app that helps people learn about different types of doctors (specialists) and common health topics. Users can browse through a list of medical specialists, tap on one to see what conditions they treat, and read answers to frequently asked questions. The app is for anyone who wants to understand what different doctors do and get basic health information in an easy-to-read format.

## 2. Main Goals

1. Show users a list of medical specialists with clear icons and names
2. Let users tap on any specialist to see health topics they handle
3. Display simple answers to common health questions
4. Make everything easy to read and navigate

## 3. User Stories

**US-001**: As a user, I want to see a list of different medical specialists so that I can browse what types of doctors exist.

**US-002**: As a user, I want to tap on a specialist so that I can learn what health topics they cover.

**US-003**: As a user, I want to see common health topics for each specialist so that I know when to visit them.

**US-004**: As a user, I want to read answers to frequently asked questions so that I can learn basic health information.

**US-005**: As a user, I want to go back to the previous screen easily so that I can explore different specialists.

## 4. Features

**F-001: Specialists List Grid**
- Shows all medical specialists in a 2-column grid
- Each card shows an icon and specialist name
- User can scroll to see all specialists
- If there's no data, show a message saying "No specialists available"

**F-002: Specialist Selection**
- When user taps any specialist card, the app opens that specialist's detail page
- The app should smoothly transition to the new screen
- If tap fails, nothing happens (user can try again)

**F-003: Specialist Detail Page**
- Shows the specialist name at the top
- Displays "Topics for you" section with cards for each health topic
- Shows "FAQs" section with expandable questions
- Has a back button to return to specialists list
- If there's no data, show placeholder text

**F-004: Health Topics Cards**
- Shows 2-3 topic cards per row
- Each card has a small icon and topic name
- Cards are for display only (not tappable for now)
- If no topics exist, section is empty

**F-005: FAQ Expandable List**
- Shows a list of common questions
- Each question has a + button on the right
- Tapping a question expands it to show the answer
- Tapping again collapses the answer
- Only one question is expanded at a time

**F-006: Help Button**
- Shows a ? button in the top-right corner
- For now, tapping it does nothing (placeholder for future)

## 5. Screens

**S-001: Specialists List Screen**
- Top: Title "Specialists" and back button
- Main area: Grid of specialist cards (2 columns)
- Each card shows an icon and specialist name
- User arrives here when app launches
- Navigation: Tapping any card goes to S-002 for that specialist

**S-002: Specialist Detail Screen**
- Top: Back button, specialist name, and help button (?)
- "Topics for you" section: Grid of topic cards
- "FAQs" section: List of expandable questions and answers
- User arrives here by tapping a specialist on S-001
- Navigation: Back button returns to S-001

## 6. Data

**D-001: Specialist Information**
- Each specialist needs: name, icon image name
- Example: "Dermatologist" with skin-related icon

**D-002: Health Topics**
- Each topic needs: name, icon image name, which specialist it belongs to
- Example: "Acne" with icon, belongs to Dermatologist

**D-003: FAQ Items**
- Each FAQ needs: question text, answer text, which specialist it belongs to
- Example: "How can I protect my skin from sun damage?" with answer, belongs to Dermatologist

**D-004: Sample Data**
- For now, all specialists will show the same topics and FAQs (Dermatologist's data)
- This is temporary - the focus is on getting the UI working correctly

## 7. Extra Details

**Network**: This app does not need internet. All information is stored inside the app.

**Data Storage**: All data is hard-coded in the app (written directly in the code files). No database needed for now.

**Permissions**: No special iPhone permissions needed (no camera, location, contacts, etc.).

**Appearance**: 
- Use light mode
- Use iPhone's default system colors and fonts
- Follow iOS standard navigation patterns

**Platform**: iPhone only, iOS 16 or newer.

## 8. Build Steps

**B-001: Project Setup**
- Replace "more" tab with "specialists" tab

**B-002: Create Data Models** (D-001, D-002, D-003)
- Create a Specialist model (name and icon)
- Create a Topic model (name and icon)
- Create an FAQ model (question and answer)
- Add sample data for one specialist (Dermatologist)

**B-003: Build Specialists List Screen** (S-001, F-001, F-002)
- Create the main specialists grid view
- Show all specialists in 2 columns
- Make cards tappable
- Add navigation to detail screen

**B-004: Build Specialist Detail Screen** (S-002, F-003, F-006)
- Create detail view with navigation bar
- Add back button
- Add help button (placeholder)
- Show specialist name

**B-005: Add Topics Section** (F-004)
- Add "Topics for you" heading
- Create topic cards grid
- Display topics for the selected specialist
- Use same topics for all specialists (temporary)

**B-006: Add FAQ Section** (F-005)
- Add "FAQs" heading
- Create expandable question list
- Make questions expand/collapse on tap
- Display answers when expanded
- Use same FAQs for all specialists (temporary)

**B-007: Add Icons and Images**
- Add all specialist icons to project
- Add all topic icons to project

**B-008: Polish and Test**
- Test navigation between screens
- Test FAQ expand/collapse
- Test light mode appearance
- Make sure text is readable
- Check that scrolling works smoothly

**B-009: Final Review**
- Test on different iPhone sizes if possible
- Make sure back button works everywhere
- Verify all specialists are tappable
- Confirm app doesn't crash

---