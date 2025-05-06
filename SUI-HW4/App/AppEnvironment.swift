//
//  AppEnviroment.swift
//  SUI-HW4
//
//  Created by Dim on 06.05.2025.
//

import SwiftUI

enum AppStatus {
    case onboarding, loggedIn, loggedOut
}

class AppEnvironment: ObservableObject {
    @Published var appStatus: AppStatus = .onboarding
    @Published var email: String = ""
    
    func setEmail(_ email: String) {
        self.email = email
    }
    
    func logIn() {
        self.appStatus = .loggedIn
    }
    
    func logOut() {
        self.appStatus = .loggedOut
    }
}
