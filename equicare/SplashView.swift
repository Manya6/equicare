//
//  SplashView.swift
//  equicare
//
//  Created by Manya Malhotra on 10/01/2025.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive: Bool = false

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red:56/255 , green: 102/255, blue: 65/255))
                .ignoresSafeArea()
            if self.isActive {
                ContentView()
                    .transition(.opacity)
            } else {
                ZStack{
    
                    Image("equicare1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 500.0, height: 500.0)
                    
                    
                    //                    .padding()
                }
            }
        }
        .frame(width: 400.0, height: 900.0)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                withAnimation(.easeInOut(duration: 1.0)) {
                    self.isActive = true
                }
            }
        }
    }

}

#Preview {
    SplashView()
}
