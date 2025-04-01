//
//  LoginView.swift
//  equicare
//
//  Created by Manya Malhotra on 01/04/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            ZStack{
                Rectangle()
                    .fill(Color(red:56/255 , green: 102/255, blue: 65/255))
                    .ignoresSafeArea()
                VStack {
                    Image("equicare1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 220.0, height: 220.0)
                        .scaledToFill()
                        .padding(.vertical, 32)
                    
                    VStack (spacing: 24) {
                        InputView(text: $email,
                                  title: "Email Address",
                        placeholder: "name@example.com")
                        .autocapitalization(.none)
                        
                        InputView(text: $password, title: "Password", placeholder: "enter your password", isSecureField: true)
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)

                    Button {
                        Task {
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                    } label: {
                        HStack{
                            Text("Sign In")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    }
                    
                    .background(Color(.myGreen))
                    .cornerRadius(10)
                    .padding(.top, 24)
                    Spacer()
                    // image
                    //form fields
                    //sign in button
                    //sign up button
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack (spacing: 3){
                            Text("Don't have an account?")
                            Text("Sign Up")
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    LoginView()
}
