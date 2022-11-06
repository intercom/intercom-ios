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
                StylizedButton("Open Messenger", action: openMessenger)
                StylizedButton("Open Inbox", action: openInbox)
                StylizedButton("Open Help Center", action: openHelpCenter)
                StylizedButton("Open Help Center Collections", action: openHelpCenterCollections)
                StylizedButton("Open Article", action: openArticle)
                StylizedButton("Open Carousel", action: openCarousel)
                StylizedButton("Open Survey", action: openSurvey)
                StylizedButton("Log out", action: logoutOfIntercom)
            }
        }
    }
    
    func openMessenger() {
        Intercom.present()
    }
    
    func openInbox() {
        Intercom.present(.messages)
    }
    
    func openHelpCenter() {
        Intercom.present(.helpCenter)
    }
    
    func openHelpCenterCollections() {
        Intercom.presentContent(.helpCenterCollections(ids: ["<#COLLECTION_ID_1#>", "<#COLLECTION_ID_2#>"]))
    }
    
    func openArticle() {
        Intercom.presentContent(.article(id: "<#ARTICLE_ID#>"))
    }
    
    func openCarousel() {
        Intercom.presentContent(.carousel(id: "<#CAROUSEL_ID#>"))
    }
    
    func openSurvey() {
        Intercom.presentContent(.survey(id: "<#SURVEY_ID#>"))
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
