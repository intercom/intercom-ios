//
//  StylizedTextField.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI

struct StylizedTextField: View {
    
    let title: String
    @Binding var text: String
    let onCommit: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing:0) {
            Text(title)
                .titleStyle()
            TextField(LocalizedStringKey(title), text: $text, onCommit: onCommit)
                .keyboardType(.emailAddress)
                .frame(maxWidth: 300, minHeight: 44)
            Rectangle()
                .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color.gray)
        }
    }
    
}

struct IntercomTextField_Previews: PreviewProvider {
    @State static var text = "My Email"
    
    static var previews: some View {
        StylizedTextField(title: "Email", text: $text, onCommit: {})
    }
}
