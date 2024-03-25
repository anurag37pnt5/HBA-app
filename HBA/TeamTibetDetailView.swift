//
//  TeamTibetDetailView.swift
//  HBA
//
//  Created by Anurag Baral on 3/26/24.
//

import SwiftUI

struct TeamTibetDetailView: View {
    
//    struct Player: Identifiable {
//        let id = UUID()
//        let name: String
//        let height: String
//        let age: String
//
//          var heightInInches: Int {
//              let components = height.split(separator: "'").flatMap { $0.split(separator: "\"") }
//              let feet = Int(components[0]) ?? 0
//              let inches = Int(components[1]) ?? 0
//              return feet * 12 + inches
//          }
//
//      }

    @State private var players = [
    Player(name: "Jigme Taring", height: "5'10", age: "28", teamLogo: "TeamTibet"),
    Player(name: "Thubwang Amdo", height: "5'10", age: "23", teamLogo: "TeamTibet"),
    Player(name: "Tenzin Tsering", height: "5'9", age: "22", teamLogo: "TeamTibet"),
    Player(name: "Tashi Jeshong", height: "5'7", age: "32", teamLogo: "TeamTibet"),
    Player(name: "Tsering Jeshong", height: "5'7", age: "32", teamLogo: "TeamTibet"),
    Player(name: "Oghuz Anwar", height: "6'6", age: "28", teamLogo: "TeamTibet"),
    Player(name: "Tenzin Basnet", height: "5'8", age: "41", teamLogo: "TeamTibet"),
    Player(name: "Tenzin Thinley", height: "5'8", age: "41", teamLogo: "TeamTibet"),
    Player(name: "Tenzin Lodoe", height: "5'8", age: "22", teamLogo: "TeamTibet"),
    Player(name: "Tenzin Tsering", height: "5'8", age: "23", teamLogo: "TeamTibet"),
    Player(name: "Tsewang Thilly", height: "5'6", age: "24", teamLogo: "TeamTibet")]
    
    @State private var sortAscendingByHeight: Bool = true
    
    @State private var sortAscendingByName: Bool = true

    func toggleNameSort() {
        sortAscendingByName.toggle()
        players.sort { sortAscendingByName ? $0.name < $1.name : $0.name > $1.name }
    }
    
    func toggleHeightSort() {
        sortAscendingByHeight.toggle()
        players.sort {
            if sortAscendingByHeight {
                return $0.heightInInches < $1.heightInInches
            } else {
                return $0.heightInInches > $1.heightInInches
            }
        }
    }
    
    // State to track sort order for age
    @State private var sortAscending: Bool = true
    
    //Function to toggle age sort order
    func toggleAgeSort() {
        sortAscending.toggle()
        players.sort { sortAscending ? $0.age < $1.age : $0.age > $1.age }
    }

    
    var body: some View {
        VStack {
            Image("TeamTibet")
                .resizable()
                .scaledToFit()
            
            Text("Team Tibet")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("ROSTER")
                .font(.largeTitle)
                .padding(.bottom)
                .foregroundColor(.gray)

            ScrollView{
                VStack {
                    HStack {
                        Button(action: toggleNameSort) {
                            HStack {
                                Text("PLAYER")
                                    .underline()
                                Image(systemName: sortAscendingByName ? "arrow.down" : "arrow.up")
                            }
                        }
                            .frame(minWidth: 120)
                        
                        Spacer()
                        
                        Button(action: toggleHeightSort){
                            HStack {
                                Text("HEIGHT")
                                    .underline()
                                Image(systemName: sortAscendingByHeight ? "arrow.down" : "arrow.up")
                            }
                        }
                        .frame(minWidth: 120)
                        
                        Spacer()
                        
                        Button(action: toggleAgeSort){
                            HStack {
                                Text("AGE")
                                    .underline()
                                
                                // Sort direction indicator
                                Image(systemName: sortAscending ? "arrow.down": "arrow.up")
                            }
                        }
                        .frame(minWidth: 100)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    ForEach(players) { player in HStack{
                        NavigationLink(destination: PlayerProfileView(player: player)) {
                            Text(player.name)
                        }
                            .frame(minWidth: 130)
                        Text(player.height)
                            .frame(minWidth: 120)
                        Text(player.age)
                            .frame(minWidth: 100)
                    }
                    .padding(.horizontal)
                        
                        Divider()
                    }
                }
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    TeamTibetDetailView()
}
