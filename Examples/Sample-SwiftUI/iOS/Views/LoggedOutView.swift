//
//  LoggedOutView.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI
import Intercom 

struct LoggedOutView: View {
    
    @Binding var userHash: String
    @Binding var userId: String
    @Binding var loggedIn: Bool

    var body: some View {
        VStack(spacing: 25) {
            StylizedTextField(title: "User HMAC", text: $userHash, onCommit: loginToIntercom)
                .frame(maxWidth: 350)
            StylizedTextField(title: "User ID", text: $userId, onCommit: loginToIntercom)
                .frame(maxWidth: 350)
            StylizedButton("Login", action: loginToIntercom)
                .disabled(userHash.isEmpty && userId.isEmpty)
        }
    }
    
    func loginToIntercom() {
        // Start tracking the user with Intercom
        Intercom.setUserHash(userHash)
        Intercom.registerUser(withUserId: userId)
        
        let defaults = UserDefaults.standard
        defaults.set(userHash, forKey: hashKey)
        defaults.set(userId, forKey: userIdKey)
        loggedIn = true
    }
}

struct LoggedOutView_Previews: PreviewProvider {
    @State static private var userHash = "my user hmac"
    @State static private var userId = "my user id"
    @State static private var loggedIn = true

    static var previews: some View {
        LoggedOutView(userHash: $userHash, userId: $userId, loggedIn: $loggedIn)
    }
}
