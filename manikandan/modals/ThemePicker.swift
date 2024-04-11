//
//  ThemePicker.swift
//  manikandan
//
//  Created by MANIKANDAN SAMINATHAN on 11/04/24.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection :Theme
    var body: some View {
        Picker("Theme",selection: $selection){
            ForEach(Theme.allCases){ theme in
                ThemeView(theme: theme)
            }
        }.pickerStyle(.navigationLink)
    }
}

#Preview {
    ThemePicker(selection: .constant(.indigo))
}
