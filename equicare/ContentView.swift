//
//  ContentView.swift
//  equicare
//
//  Created by Manya Malhotra on 10/01/2025.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationStack{
            
//            Group {
//                if viewModel.userSession != nil{
//                    ProfileView()
//                }
//                else {
//                    LoginView()
//                }
//            }
        ZStack{
            Rectangle()
                .fill(Color(red:56/255 , green: 102/255, blue: 65/255))
                .ignoresSafeArea()
            VStack{
                
                Image("equicare2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal)
                Text("Welcome to Equicare, a platform meant to remove any barriers from access to equal healthcare to all⛑️")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.leading, .bottom, .trailing])
                
                NavigationLink(destination: LoginView()) {
                    Text("Tell me more!")
                        .padding()
                        .background(Color(red: 106/255, green: 153/255, blue: 78/255))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.headline)
                }

                
                
            }
               
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthViewModel.preview)
}
