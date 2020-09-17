//
//  ViewModifiers.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI

extension Text {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

fileprivate struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .font(.caption)
            .frame(alignment: .leading)
    }
}
