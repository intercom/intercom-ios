//
//  Sample_SwiftUIApp.swift
//  Shared
//
//  Created by Michael McNamara on 07/09/2020.
//

import SwiftUI

@main
struct Sample_SwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
