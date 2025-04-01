//
//  AuthViewModel.swift
//  equicare
//
//  Created by Manya Malhotra on 01/04/2025.
//

import Foundation
import Firebase
import FirebaseAuth

extension AuthViewModel {
    static var preview: AuthViewModel {
        let vm = AuthViewModel()
        vm.userSession = nil // Simulate logged-out state
        return vm
    }
}


class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        print("Sign In...")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        print("Create User")
    }
    
    func signOut() {
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
}
