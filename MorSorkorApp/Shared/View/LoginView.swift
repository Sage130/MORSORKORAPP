//
//  LoginView.swift
//  MorSorkorApp
//
//  Created by เกสร สุภาวงษ์ on 5/4/2566 BE.
//

import SwiftUI

struct LoginView: View {
    
//    @StateObject var logining = AuthViewModel()
    
    @EnvironmentObject var auth: AuthViewModel
    var body: some View {
        if (auth.isUserAuthenticated == true)  {
            Home()
            
        } else if (auth.isUserAuthenticated == false) {
            IntroTwo()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
//        Button {
//            logining.logout()
//        } label: {
//            Text("ปุ่มล็อกเอ้ามาแน้ว")
//        }
        
        LoginView()
            .environmentObject(AuthViewModel())
    }
}
