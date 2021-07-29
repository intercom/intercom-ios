//
//  ContentView.swift
//  Shared
//
//  Created by Michael McNamara on 07/09/2020.
//

import SwiftUI
import Intercom

struct ContentView: View {

    @State private var userHash = UserDefaults.standard.string(forKey: hashKey) ?? ""
    @State private var userId = UserDefaults.standard.string(forKey: userIdKey) ?? ""
    @State private var loggedIn = UserDefaults.standard.string(forKey: userIdKey) != nil

    var body: some View {
        VStack(alignment: .center, spacing: 80) {
            Image("IntercomLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 200)
            if !loggedIn {
                LoggedOutView(userHash: $userHash, userId: $userId, loggedIn: $loggedIn)
            } else {
                LoggedInView(userHash: $userHash, userId: $userId, loggedIn: $loggedIn)
            }
        }.padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
