//
//  LoggedInView.swift
//  Sample-SwiftUI (iOS)
//
//  Created by Michael McNamara on 08/09/2020.
//

import SwiftUI
import Intercom

struct LoggedInView: View {
    
    @Binding var email: String
    @Binding var loggedIn: Bool

    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing:15) {
                Text("Logged in as:")
                    .titleStyle()
                Text(email)
            }
            VStack(spacing:15) {
                StylizedButton("Open Intercom", action: openIntercom)
                StylizedButton("Log out", action: logoutOfIntercom)
            }
        }
    }
    
    func openIntercom() {
        Intercom.presentMessenger()
    }
    
    func logoutOfIntercom() {
        // Calling Intercom.logout() will log remove all local user data and stop tracking them.
        Intercom.logout()
        
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: emailKey)
        loggedIn = false
        email = ""
    }
    
}

struct LoggedInView_Previews: PreviewProvider {
    @State static private var email = "myemail@email.com"
    @State static private var loggedIn = true
    
    static var previews: some View {
        LoggedInView(email: $email, loggedIn: $loggedIn)
    }
}
