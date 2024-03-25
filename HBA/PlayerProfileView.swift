//
//  PlayerProfileView.swift
//  HBA
//
//  Created by Anurag Baral on 3/28/24.
//

import SwiftUI

struct PlayerProfileView: View {
    var player: Player
    var body: some View {
        VStack{
            ZStack{
                Image(player.teamLogo)
                    .resizable()
                    .frame(height: 300)
                
                Image(player.name)
                    .resizable()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Optional: Adds a white border around the circle
                    .offset(y: 150)
            }
        }
        Text(player.name)
            .font(.headline)
            .offset(y: 100)
        Spacer()
        
        
    }
    
}


#Preview {
    PlayerProfileView(player: Player(name: "Billy", height: "5'9", age: "24", teamLogo: "HoliCrossover"))
}
