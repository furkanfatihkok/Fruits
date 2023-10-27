//
//  Fruits_AppApp.swift
//  Fruits-App
//
//  Created by FFK on 24.10.2023.
//

import SwiftUI

@main
struct Fruits_AppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
