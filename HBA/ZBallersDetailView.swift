//
//  ZBallersDetailView.swift
//  HBA
//
//  Created by Anurag Baral on 3/25/24.
//

import SwiftUI

struct ZBallersDetailView: View {
    
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
    Player(name: "Anish Katwal", height: "6'1", age: "33", teamLogo: "ZBallers"),
    Player(name: "Syed", height: "6'1", age: "30", teamLogo: "ZBallers"),
    Player(name: "Bipul Karki", height: "5'3", age: "31", teamLogo: "ZBallers"),
    Player(name: "Raj Kharel", height: "6'4", age: "24", teamLogo: "ZBallers"),
    Player(name: "Anish Shrestha", height: "5'8", age: "29", teamLogo: "ZBallers"),
    Player(name: "Pasang Gurung", height: "5'7", age: "24", teamLogo: "ZBallers"),
    Player(name: "Adam Henson", height: "5'8", age: "32", teamLogo: "ZBallers")]
    
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
            Image("ZBallers")
                .resizable()
                .scaledToFit()
            
            Text("Z Ballers")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("ROSTER")
                .foregroundColor(.gray)
                .font(.largeTitle)
                .padding(.bottom)
                
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
    ZBallersDetailView()
}
