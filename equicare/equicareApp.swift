//
//  equicareApp.swift
//  equicare
//
//  Created by Manya Malhotra on 10/01/2025.
//

import SwiftUI

@main
struct equicareApp: App {
    @StateObject var viewModel = AuthViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
