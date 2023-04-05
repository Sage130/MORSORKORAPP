//
//  SplashScreenView.swift
//  MorSorkorApp (iOS)
//
//  Created by เกสร สุภาวงษ์ on 5/4/2566 BE.
//

import SwiftUI

struct SplashScreenView: View {
       
    @EnvironmentObject var auth: AuthViewModel
    @State private var isAction = false 
    @State private var size = 0.89
    @State private var opacity = 0.5
    
    var body: some View {
        if isAction {
            LoginView()
            
        } else {
            VStack {
                VStack {
                    Image("LogoApp")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)

                    Text("MorSorKor")
                        .font(Font.custom("NotoSansThai-ExtraBold", size: 35))
                        .foregroundColor(.black.opacity(0.80))
                        .padding(10)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isAction = true
                    }

                }
            }
        }
            
          
       
    }
}
