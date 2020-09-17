//
//  LoggedOutView.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI
import Intercom 

struct LoggedOutView: View {
    
    @Binding var email: String
    @Binding var loggedIn: Bool

    var body: some View {
        VStack(spacing: 25) {
            StylizedTextField(title: "Email", text: $email, onCommit: loginToIntercom)
                .frame(maxWidth: 350)
            StylizedButton("Login", action: loginToIntercom)
                .disabled(email.isEmpty)
        }
    }
    
    func loginToIntercom() {
        // Start tracking the user with Intercom
        Intercom.registerUser(withEmail: email)
        
        let defaults = UserDefaults.standard
        defaults.set(email, forKey: emailKey)
        loggedIn = true
    }
}

struct LoggedOutView_Previews: PreviewProvider {
    @State static private var email = "myemail@email.com"
    @State static private var loggedIn = true

    static var previews: some View {
        LoggedOutView(email: $email, loggedIn: $loggedIn)
    }
}
