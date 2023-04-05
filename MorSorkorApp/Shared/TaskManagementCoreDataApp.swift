//
//  TaskManagementCoreDataApp.swift
//  Shared
//
//  Created by วราลี พัฒน์สาร on 3/24/23.
//
import SwiftUI
import FirebaseCore

@main
struct TaskManagementCoreDataApp: App {
//    @StateObject var logining = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
       
        WindowGroup {
//            Button {
//                logining.logout()
//            } label: {
//                Text("ล็อกเอ้า")
//            }
            SplashScreenView()
                .environmentObject(AuthViewModel())
        }
    }
}
