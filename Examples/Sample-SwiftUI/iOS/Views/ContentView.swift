//
//  ContentView.swift
//  Shared
//
//  Created by Michael McNamara on 07/09/2020.
//

import SwiftUI
import Intercom

struct ContentView: View {

    @State private var email = UserDefaults.standard.string(forKey: emailKey) ?? ""
    @State private var loggedIn = UserDefaults.standard.string(forKey: emailKey) != nil

    var body: some View {
        VStack(alignment: .center, spacing: 80) {
            Image("IntercomLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 200)
            if !loggedIn {
                LoggedOutView(email: $email, loggedIn:$loggedIn)
            } else {
                LoggedInView(email: $email, loggedIn:$loggedIn)
            }
        }.padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
