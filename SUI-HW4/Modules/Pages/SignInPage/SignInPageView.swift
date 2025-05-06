//
//  ContentView.swift
//  SUI-HW4
//
//  Created by Dim on 05.05.2025.
//

import SwiftUI

struct SignInPageView: View {
    @StateObject var viewModel = SignInPageViewModel()
    @EnvironmentObject var appEnvironment: AppEnvironment
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack(alignment: .bottom) {
                VStack {
                    Text("Authorization")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 40)
                    
                    TextField("Email", text: $email)
                        .padding()
                        .background(.fill)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    TextField("Password", text: $password)
                        .padding()
                        .background(.fill)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Spacer()
                    
                }
                .padding(.horizontal)

            Button(action: {
                if viewModel.authenticate(email: email, password: password) {
                    appEnvironment.setEmail(email)
                    appEnvironment.logIn()
                }
            }) {
                Text("Sign In")
                    .padding()
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
        }
        .frame(maxHeight: .infinity)
    }
}

#Preview {
    SignInPageView().environmentObject(AppEnvironment())
}
