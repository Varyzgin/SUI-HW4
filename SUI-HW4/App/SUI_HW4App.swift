//
//  SUI_HW4App.swift
//  SUI-HW4
//
//  Created by Dim on 05.05.2025.
//

import SwiftUI

@main
struct SUI_HW4App: App {
    @StateObject var appEnvironment = AppEnvironment()
    var body: some Scene {
        WindowGroup {
            switch appEnvironment.appStatus {
            case .onboarding: OnboardingView().environmentObject(appEnvironment)
            case .loggedIn: HomePageView().environmentObject(appEnvironment)
            case .loggedOut: SignInPageView().environmentObject(appEnvironment)
            }
//            OnboardingView()
        }
    }
}
