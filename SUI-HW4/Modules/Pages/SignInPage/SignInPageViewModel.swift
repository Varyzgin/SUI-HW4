//
//  ContentView.swift
//  SUI-HW4
//
//  Created by Dim on 05.05.2025.
//

import SwiftUI

class SignInPageViewModel: ObservableObject {
    let users: [String : String] = ["admin" : "admin", "one" : "pass"]
    func authenticate(email: String, password: String) -> Bool {
        users.contains(where: { $0.key == email && $0.value == password}) ? true : false
    }
}
