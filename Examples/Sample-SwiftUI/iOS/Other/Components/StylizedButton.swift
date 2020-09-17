//
//  StylizedButton.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI

struct StylizedButton: View {
    
    let title: String
    let action: () -> Void
    
    init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: 350, minHeight: 44)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }.buttonStyle(PlainButtonStyle())
    }
    
}

struct IntercomButton_Previews: PreviewProvider {
    static var previews: some View {
        StylizedButton("Button", action: {})
    }
}
