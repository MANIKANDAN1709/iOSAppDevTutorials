import SwiftUI

enum Theme: String{
     case bubblegum,buttercup,indigo,lavender,magenta,navy,orange,oxblood,periwinkle,poppy,purple,seafoam,sky,tan,teal,yellow
     var accentColor: Color {
            switch self {
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
            }
    }
    var mainColor: Color {
    return Color(rawValue)
    }
}