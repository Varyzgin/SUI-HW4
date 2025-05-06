//
//  ContentView.swift
//  SUI-HW4
//
//  Created by Dim on 05.05.2025.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var appEnviroment: AppEnvironment
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, \(appEnviroment.email)")
                .font(.largeTitle)
                .fontWeight(.bold)
               
            Spacer()
            Button(action: {
                appEnviroment.logOut()
            }) {
                Text("Log Out")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .padding()
    }
}

#Preview {
    HomePageView().environmentObject(AppEnvironment())
}
