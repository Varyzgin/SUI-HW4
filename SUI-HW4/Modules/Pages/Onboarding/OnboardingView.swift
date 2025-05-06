//
//  ContentView.swift
//  SUI-HW4
//
//  Created by Dim on 05.05.2025.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var appEnvironment: AppEnvironment
    var body: some View {
        ZStack {
            Text("Welcome to")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            VStack {
                Image(systemName: "person.circle")
                    .resizable().scaledToFit()
                    .frame(width: 200)
                Text("The Social App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1 , execute: {
                appEnvironment.appStatus = .loggedOut
            })
        }
    }
}

#Preview {
    OnboardingView().environmentObject(AppEnvironment())
}
