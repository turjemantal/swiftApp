//
//  chatApplicationsApp.swift
//  chatApplications
//
//  Created by Tal Turjeman on 10/08/2021.
//

import SwiftUI
import Firebase

@main
struct tutorialApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
