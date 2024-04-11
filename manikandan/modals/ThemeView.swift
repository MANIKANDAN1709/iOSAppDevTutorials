//
//  ThemeView.swift
//  manikandan
//
//  Created by MANIKANDAN SAMINATHAN on 11/04/24.
//

import SwiftUI

struct ThemeView: View {
    var theme:Theme
    var body: some View {
        Text(theme.name).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(theme.mainColor).clipShape(RoundedRectangle(cornerRadius: 4)).foregroundColor(theme.accentColor).padding(4)
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
