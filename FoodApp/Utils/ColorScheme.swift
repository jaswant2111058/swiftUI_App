import SwiftUI



enum AppColor {
    case primary
    case secondary
    case shadeThree
    case Face
    case Blue
    case black
    case white
    
    var color: Color {
        switch self {
        case .primary:
            return Color(hex: "#FAD300")
        case .secondary:
            return Color(hex: "#FFC619")
        case .Face:
            return Color(hex: "#E09F5A")
        case .Blue:
            return Color(hex: "#1F4762")
        case .black:
            return Color(hex: "#153040")
        case .shadeThree:
            return Color(hex: "#182833")
        case .white:
            return Color(hex: "#FFFFFF")
        }
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
