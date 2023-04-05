//
//  pageLogin.swift
//  MorSorkorApp (iOS)
//
//  Created by เกสร สุภาวงษ์ on 5/4/2566 BE.
//

import SwiftUI

struct pageLogin: View {
    
    @ObservedObject private var authVM: AuthViewModel = AuthViewModel()
    @EnvironmentObject private var auth: AuthViewModel
    @Environment(\.presentationMode) var presetationMode
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack(spacing: 20) {
                Image("Pik3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 400)
                    .padding(20)
                
                TextField("Email", text: $email, prompt: Text("Email").foregroundColor(.gray))
                    .foregroundColor(.black)
                    .textFieldStyle(.plain)
                    .padding(.horizontal)
                    
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password, prompt:
                    Text("Password").foregroundColor(.gray))
                    .padding(.horizontal)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                Button {
                    // Call Firebase to login
                    if email != "" && password != "" {
                        auth.login(email: email, password: password)
                    }
                } label: {
                    Text("Log in")
                        .bold()
                        .frame(width: 250, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(Color("Pinku"))
                                //.fill(.linearGradient(colors: [.white], startPoint: .top, endPoint: bottom))
                        )
                        .foregroundColor(.white)
                }
                .offset(y: 20)
                
                Button {
                    // Go to signup screen
                    auth.register(email: email, password: password, firstName: "Gasorn", lastName: "Supawong") { result in
                        switch result {
                        case .success(let isSuccess):
                            print(isSuccess ? "Register success" : "Register failed")
                            // Go to login view.
                        case .failure(let error):
                            print(error.localizedDescription)
                            // Show Alert
                        }
                    }
                } label: {
                    Text("Don't have an account? Join")
                        .foregroundColor(.blue)
                }
                .offset(y: 20)
            }
        }
        .ignoresSafeArea()
        .onChange(of: auth.isUserAuthenticated) { newValue in
            if newValue == true {
                presetationMode.wrappedValue.dismiss()
            }
        }
        
    }
}

struct pageLogin_Previews: PreviewProvider {
    static var previews: some View {
        pageLogin()
            .environmentObject(AuthViewModel())
    }
}
