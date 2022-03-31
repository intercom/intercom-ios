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
        let attributes = ICMUserAttributes()
        attributes.email = email
        Intercom.loginUser(with: attributes) { result in
            switch result {
            case .success:
                let defaults = UserDefaults.standard
                defaults.set(email, forKey: emailKey)
                loggedIn = true
            case .failure(let error): print("Error logging in: \(error.localizedDescription)")
            }
        }
    }
}

struct LoggedOutView_Previews: PreviewProvider {
    @State static private var email = "myemail@email.com"
    @State static private var loggedIn = true

    static var previews: some View {
        LoggedOutView(email: $email, loggedIn: $loggedIn)
    }
}
