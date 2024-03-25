//
//  DunkinHanumansDetailView.swift
//  HBA
//
//  Created by Anurag Baral on 3/26/24.
//

import SwiftUI

struct DunkinHanumansDetailView: View {
    
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
    Player(name: "Parag Baral", height: "5'4", age: "32", teamLogo: "DunkinHanumans"),
    Player(name: "Krish", height: "6'0", age: "22", teamLogo: "DunkinHanumans"),
    Player(name: "Abhinav Joshi", height: "6'4", age: "26", teamLogo: "DunkinHanumans"),
    Player(name: "Shreyas", height: "5'10", age: "19", teamLogo: "DunkinHanumans"),
    Player(name: "Manish Shrestha", height: "5'7", age: "28", teamLogo: "DunkinHanumans"),
    Player(name: "Shaan", height: "5'8", age: "19", teamLogo: "DunkinHanumans"),
    Player(name: "Sagar Moktan", height: "5'7", age: "31", teamLogo: "DunkinHanumans"),
    Player(name: "Fred Mendezo", height: "5'10", age: "31", teamLogo: "DunkinHanumans")]
    
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
            Image("DunkinHanumans")
                .resizable()
                .scaledToFit()
            Text("Dunkin Hanumans")
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
    DunkinHanumansDetailView()
}
