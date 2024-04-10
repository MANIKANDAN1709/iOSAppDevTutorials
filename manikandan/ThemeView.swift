//
//  ThemeView.swift
//  manikandan
//
//  Created by MANIKANDAN SAMINATHAN on 10/04/24.
//

import SwiftUI

struct ThemeView: View {
    let theme:Theme
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
