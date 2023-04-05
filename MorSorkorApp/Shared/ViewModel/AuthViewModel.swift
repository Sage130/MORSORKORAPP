//
//  AuthViewModel.swift
//  MorSorkorApp (iOS)
//
//  Created by เกสร สุภาวงษ์ on 5/4/2566 BE.
//

import Foundation
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

class AuthViewModel: ObservableObject {
    
    @Published var isLogin = false
    @Published var isUserAuthenticated = false
    
    private let db = Firestore.firestore()
    
    init() {
        if let user = Auth.auth().currentUser {
            print("Logged in user: \(user.email ?? "")")
            isUserAuthenticated = true
        } else {
            isUserAuthenticated = false
        }
    }
    
    func login(email:String, password: String) {
        isUserAuthenticated = true
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let authResult = authResult {
                self.isUserAuthenticated = true
                print(authResult.user.email)
            }
        }
    }
    
    func logout() {
        isUserAuthenticated = false
        do {
            try Auth.auth().signOut()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func register(email: String, password: String, firstName: String, lastName: String, completion: @escaping (Result<Bool,Error>) -> Void ) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error.localizedDescription)
            } else if let authResult = authResult {
                self.db.collection("users").document(authResult.user.uid).setData([
                    "email": email,
                    "password": password
                ]) { error in
                    if let error = error {
                        completion(.failure(error))
                    } else {
                        completion(.success(true))
                    }
                }
            }
        }
    }
}

