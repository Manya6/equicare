//
//  ThirdView.swift
//  equicare
//
//  Created by Manya Malhotra on 10/01/2025.
//

//
//  thirdView.swift
//  question app
//
//  Created by Manya Malhotra on 29/04/2024.
//

import SwiftUI

struct thirdView: View {
    @State private var icon = ""
    @State private var selectedGenre: String? = nil
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red:56/255 , green: 102/255, blue: 65/255)
                    .ignoresSafeArea()
                VStack(spacing: 50){
                    Text("\(icon)")
                        .font(.system(size: 100))
                    Text("What age are you?🎂")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Button("toddler") {
                        selectGenre("👶")
                    }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:167/255 , green: 201/255, blue: 87/255))
                    
                    Button("child") {
                        selectGenre("🧒")
                    }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:167/255 , green: 201/255, blue: 87/255))
                    
                    Button("teen") {
                        selectGenre("🧑")
                    }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:167/255 , green: 201/255, blue: 87/255))
                    
                    Button("young adult") {
                        selectGenre("🧑‍🦱")
                    }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:167/255 , green: 201/255, blue: 87/255))
                    
                    Button("adult") {
                        selectGenre("👨‍🦱")
                    }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red:167/255 , green: 201/255, blue: 87/255))
                    
                    
                    NavigationLink(destination: ContentView()
                        .font(.title)) {
                            Text("next→")
                                .font(.title3)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.black)
                        }
                }
            }
        }
    }
    
    private func selectGenre(_ genre: String) {
        selectedGenre = genre
        updateGenreIcon()
    }
    
    private func updateGenreIcon() {
        if let selectedGenre = selectedGenre {
            icon = selectedGenre
        }
    }
}

#Preview {
    thirdView()
}
