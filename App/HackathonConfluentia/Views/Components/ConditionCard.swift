import SwiftUI

// MARK: - Enhanced Condition Card View
struct ConditionCard: View {
    let condition: HealthCondition
    let isSelected: Bool
    let action: () -> Void
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withHapticFeedback {
                action()
            }
        }) {
            VStack(spacing: 12) {
                ZStack {
                    Circle()
                        .fill(isSelected ? AnyShapeStyle(condition.gradient) : AnyShapeStyle(condition.color.opacity(0.1)))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: condition.icon)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(isSelected ? .white : condition.color)
                }
                
                VStack(spacing: 4) {
                    Text(condition.name)
                        .font(.system(size: 13, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(isSelected ? .white : .primary)
                        .lineLimit(2)
                    
                    Text(condition.description)
                        .font(.system(size: 11, design: .rounded))
                        .foregroundColor(isSelected ? .white.opacity(0.9) : .secondary)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                }
            }
            .padding(16)
            .frame(maxWidth: .infinity, minHeight: 120)
            .background(
                Group {
                    if isSelected {
                        condition.gradient
                    } else {
                        Color.white.overlay(condition.color.opacity(0.05))
                    }
                }
            )
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(
                        isSelected ? condition.color.opacity(0.3) : .gray.opacity(0.2),
                        lineWidth: isSelected ? 2 : 1
                    )
            )
            .shadow(
                color: isSelected ? condition.color.opacity(0.3) : .black.opacity(0.05),
                radius: isSelected ? 8 : 4,
                x: 0,
                y: isSelected ? 4 : 2
            )
            .scaleEffect(isPressed ? 0.95 : 1.0)
        }
        .buttonStyle(PlainButtonStyle())
        .onLongPressGesture(minimumDuration: 0, maximumDistance: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = pressing
            }
        }, perform: {})
    }
    
    private func withHapticFeedback<T>(_ action: () -> T) -> T {
        let impact = UIImpactFeedbackGenerator(style: .light)
        impact.impactOccurred()
        return action()
    }
}

