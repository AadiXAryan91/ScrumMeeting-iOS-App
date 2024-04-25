
import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case customBubblegum
    case customButtercup
    case customIndigo
    case customLavender
    case customMagenta
    case customNavy
    case customOrange
    case customOxblood
    case customPeriwinkle
    case customPoppy
    case customPurple
    case customSeafoam
    case customSky
    case customTan
    case customTeal
    case customYellow
    
    var accentColor: Color {
        switch self {
        case .customBubblegum, .customButtercup, .customLavender, .customOrange, .customPeriwinkle, .customPoppy, .customSeafoam, .customSky, .customTan, .customTeal, .customYellow: return .black
        case .customIndigo, .customMagenta, .customNavy, .customOxblood, .customPurple: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        let prefix = "custom"
        let extractedValue = String(rawValue.dropFirst(prefix.count))
        
        return extractedValue.capitalized
    }
    
    var id: String {
        name
    }
}
