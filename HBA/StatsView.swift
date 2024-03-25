//
//  StatsView.swift
//  HBA
//
//  Created by Anurag Baral on 3/30/24.
//

import SwiftUI

let players = [
    // ZBallers team
    PlayerStats(name: "Anish Katwal", PPG: 10.2, RPG: 4.9, APG: 2.4, SPG: 1.3, BPG: 0.4, TPG: 1.9),
    PlayerStats(name: "Syed", PPG: 11.6, RPG: 6.1, APG: 3.7, SPG: 1.6, BPG: 0.5, TPG: 1.4),
    PlayerStats(name: "Bipul Karki", PPG: 7.3, RPG: 3.4, APG: 2.2, SPG: 0.7, BPG: 0.2, TPG: 1.6),
    PlayerStats(name: "Raj Kharel", PPG: 8.9, RPG: 5.0, APG: 1.5, SPG: 1.1, BPG: 0.6, TPG: 1.8),
    PlayerStats(name: "Anish Shrestha", PPG: 9.5, RPG: 3.7, APG: 3.0, SPG: 1.4, BPG: 0.5, TPG: 1.2),
    PlayerStats(name: "Pasang Gurung", PPG: 8.1, RPG: 4.4, APG: 2.6, SPG: 0.9, BPG: 0.3, TPG: 1.5),
    PlayerStats(name: "Adam Henson", PPG: 6.8, RPG: 3.9, APG: 1.8, SPG: 0.6, BPG: 0.4, TPG: 1.7),
    
    // DunkinHanumans team
    PlayerStats(name: "Parag Baral", PPG: 7.0, RPG: 3.1, APG: 2.1, SPG: 0.8, BPG: 0.2, TPG: 1.4),
    PlayerStats(name: "Krish", PPG: 8.4, RPG: 4.6, APG: 1.9, SPG: 0.7, BPG: 0.5, TPG: 1.3),
    PlayerStats(name: "Abhinav Joshi", PPG: 9.2, RPG: 5.8, APG: 3.3, SPG: 1.2, BPG: 0.8, TPG: 1.0),
    PlayerStats(name: "Shreyas", PPG: 5.9, RPG: 2.8, APG: 2.0, SPG: 0.5, BPG: 0.3, TPG: 1.6),
    PlayerStats(name: "Manish Shrestha", PPG: 6.2, RPG: 4.0, APG: 2.4, SPG: 0.8, BPG: 0.6, TPG: 1.1),
    PlayerStats(name: "Shaan", PPG: 4.7, RPG: 3.3, APG: 1.5, SPG: 0.6, BPG: 0.2, TPG: 1.4),
    PlayerStats(name: "Sagar Moktan", PPG: 7.5, RPG: 4.1, APG: 2.2, SPG: 0.9, BPG: 0.3, TPG: 1.2),
    PlayerStats(name: "Fred Mendezo", PPG: 6.3, RPG: 3.7, APG: 2.3, SPG: 0.8, BPG: 0.4, TPG: 1.0),
    
    //FlyingNimbus team
    PlayerStats(name: "Taran Randhawa", PPG: 9.8, RPG: 4.5, APG: 3.0, SPG: 1.2, BPG: 0.4, TPG: 1.7),
    PlayerStats(name: "Allen Baniya", PPG: 8.3, RPG: 4.1, APG: 2.2, SPG: 1.0, BPG: 0.2, TPG: 1.3),
    PlayerStats(name: "Kripal Dahal", PPG: 6.4, RPG: 3.2, APG: 2.8, SPG: 0.7, BPG: 0.2, TPG: 1.1),
    PlayerStats(name: "Rupak", PPG: 7.5, RPG: 3.9, APG: 1.6, SPG: 0.9, BPG: 0.4, TPG: 1.0),
    PlayerStats(name: "Bajj", PPG: 8.0, RPG: 4.3, APG: 3.1, SPG: 0.6, BPG: 0.5, TPG: 1.5),
    PlayerStats(name: "Adrian", PPG: 6.9, RPG: 3.4, APG: 2.1, SPG: 0.5, BPG: 0.2, TPG: 1.2),
    PlayerStats(name: "Sushant", PPG: 5.7, RPG: 2.8, APG: 1.9, SPG: 0.6, BPG: 0.1, TPG: 0.9),
    PlayerStats(name: "Moe", PPG: 7.1, RPG: 4.0, APG: 2.0, SPG: 0.8, BPG: 0.3, TPG: 1.1),
    
    //GoodShotBhaiyas team
    PlayerStats(name: "Anurag Baral", PPG: 8.5, RPG: 4.7, APG: 3.2, SPG: 0.9, BPG: 0.4, TPG: 1.3),
    PlayerStats(name: "Kush Patel", PPG: 10.1, RPG: 5.3, APG: 2.5, SPG: 1.1, BPG: 0.3, TPG: 1.4),
    PlayerStats(name: "Utsav Kattel", PPG: 6.2, RPG: 3.1, APG: 1.4, SPG: 0.6, BPG: 0.2, TPG: 0.8),
    PlayerStats(name: "Prasanna Basnet", PPG: 7.9, RPG: 4.2, APG: 2.7, SPG: 1.0, BPG: 0.5, TPG: 1.2),
    PlayerStats(name: "Harshul Patel", PPG: 5.8, RPG: 2.9, APG: 1.6, SPG: 0.5, BPG: 0.1, TPG: 0.7),
    PlayerStats(name: "Kaushal Patel", PPG: 7.0, RPG: 3.5, APG: 2.1, SPG: 0.8, BPG: 0.3, TPG: 1.0),
    PlayerStats(name: "Messial", PPG: 6.3, RPG: 2.7, APG: 2.3, SPG: 0.7, BPG: 0.2, TPG: 0.9),
    PlayerStats(name: "Obi Omile", PPG: 8.4, RPG: 4.4, APG: 3.4, SPG: 1.0, BPG: 0.4, TPG: 1.1),
    
    //SnowLions team
    PlayerStats(name: "Tenzin", PPG: 6.5, RPG: 4.0, APG: 2.3, SPG: 0.7, BPG: 0.3, TPG: 1.2),
    PlayerStats(name: "Samendra", PPG: 8.1, RPG: 4.7, APG: 1.5, SPG: 0.9, BPG: 0.2, TPG: 1.4),
    PlayerStats(name: "Tashi", PPG: 7.4, RPG: 3.8, APG: 2.1, SPG: 0.8, BPG: 0.4, TPG: 1.0),
    PlayerStats(name: "Ray", PPG: 5.6, RPG: 3.1, APG: 1.9, SPG: 0.5, BPG: 0.1, TPG: 0.9),
    PlayerStats(name: "Isiah", PPG: 4.9, RPG: 2.7, APG: 1.6, SPG: 0.6, BPG: 0.2, TPG: 1.1),
    PlayerStats(name: "Rojie Brown", PPG: 8.2, RPG: 5.1, APG: 2.8, SPG: 1.1, BPG: 0.3, TPG: 1.3),
    
    //TeamTibet team
    PlayerStats(name: "Thubwang Amdo", PPG: 6.3, RPG: 3.5, APG: 1.4, SPG: 0.7, BPG: 0.1, TPG: 1.0),
    PlayerStats(name: "Tenzin Tsering", PPG: 7.8, RPG: 4.2, APG: 2.7, SPG: 1.0, BPG: 0.4, TPG: 1.5),
    PlayerStats(name: "Tashi Jeshong", PPG: 5.5, RPG: 3.0, APG: 2.2, SPG: 0.5, BPG: 0.3, TPG: 1.2),
    PlayerStats(name: "Tsering Jeshong", PPG: 6.2, RPG: 4.1, APG: 2.1, SPG: 0.8, BPG: 0.2, TPG: 1.4),
    PlayerStats(name: "Oghuz Anwar", PPG: 7.7, RPG: 5.2, APG: 3.3, SPG: 0.9, BPG: 0.5, TPG: 1.0),
    PlayerStats(name: "Tenzin Basnet", PPG: 5.9, RPG: 3.6, APG: 1.8, SPG: 0.6, BPG: 0.2, TPG: 1.1),
    PlayerStats(name: "Tenzin Thinley", PPG: 4.5, RPG: 2.9, APG: 1.5, SPG: 0.4, BPG: 0.1, TPG: 1.3),
    PlayerStats(name: "Tenzin Lodoe", PPG: 6.1, RPG: 4.0, APG: 2.0, SPG: 0.5, BPG: 0.3, TPG: 1.0),
    PlayerStats(name: "Tsewang Thilly", PPG: 7.0, RPG: 4.3, APG: 2.5, SPG: 1.2, BPG: 0.4, TPG: 1.2),
    
    // KathmanduKings team
    PlayerStats(name: "Romeo KC", PPG: 8.9, RPG: 4.6, APG: 2.3, SPG: 1.0, BPG: 0.2, TPG: 1.5),
    PlayerStats(name: "Sandip Pradhan", PPG: 7.5, RPG: 3.4, APG: 2.0, SPG: 0.8, BPG: 0.1, TPG: 1.4),
    PlayerStats(name: "Nischal Pradhan", PPG: 6.0, RPG: 2.8, APG: 1.6, SPG: 0.7, BPG: 0.2, TPG: 0.9),
    PlayerStats(name: "AJ", PPG: 5.4, RPG: 3.2, APG: 1.9, SPG: 0.6, BPG: 0.1, TPG: 1.2),
    PlayerStats(name: "Gyajan", PPG: 6.7, RPG: 3.9, APG: 2.2, SPG: 0.9, BPG: 0.3, TPG: 1.1),
    PlayerStats(name: "Rahul", PPG: 5.3, RPG: 2.6, APG: 1.7, SPG: 0.5, BPG: 0.2, TPG: 1.0),
    PlayerStats(name: "Saurav", PPG: 4.8, RPG: 2.4, APG: 1.5, SPG: 0.4, BPG: 0.1, TPG: 1.3),
    PlayerStats(name: "Shea", PPG: 7.1, RPG: 3.8, APG: 2.4, SPG: 1.1, BPG: 0.4, TPG: 1.0),
    
    // HoliCrossovers team
    PlayerStats(name: "Ankit Bhattarai", PPG: 7.4, RPG: 3.7, APG: 2.1, SPG: 0.6, BPG: 0.3, TPG: 1.1),
    PlayerStats(name: "Yasin", PPG: 6.0, RPG: 2.8, APG: 1.9, SPG: 0.5, BPG: 0.2, TPG: 1.3),
    PlayerStats(name: "Paribesh", PPG: 8.3, RPG: 4.2, APG: 3.0, SPG: 1.1, BPG: 0.4, TPG: 1.5),
    PlayerStats(name: "Shawn", PPG: 7.1, RPG: 3.9, APG: 2.2, SPG: 0.9, BPG: 0.2, TPG: 1.0),
    PlayerStats(name: "Saurav Khanal", PPG: 5.6, RPG: 3.1, APG: 1.5, SPG: 0.4, BPG: 0.1, TPG: 1.2),
    PlayerStats(name: "Bibas Sharma", PPG: 6.7, RPG: 3.4, APG: 2.3, SPG: 0.8, BPG: 0.3, TPG: 1.4)
    
    
    
]
    
struct StatsView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Player Stats")
                .font(.title)
                .bold()
                .padding()
            
            
            ScrollView(.vertical, showsIndicators: true){
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(alignment: .top) {
                        VStack {
                            Text("Player").bold()
                                .frame(width: 150, alignment: .leading)
                            ForEach(players) { player in
                                Text(player.name)
                                    .frame(width: 150, alignment: .leading)
                                    .padding()
                            }
                        }
                        
                        VStack {
                            Text("PPG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.PPG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        
                        VStack {
                            Text("RPG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.RPG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        VStack {
                            Text("APG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.APG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        VStack {
                            Text("SPG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.SPG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        VStack {
                            Text("BPG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.BPG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        VStack {
                            Text("TPG").bold()
                            ForEach(players) { player in
                                Text(String(format: "%.1f", player.TPG))
                                    .frame(width: 50, alignment: .trailing)
                                    .padding()
                            }
                        }
                        
                        
                        
                        
                        
                        // Add more columns as needed
                    }
                }
            }
        }
    }
}
    


#Preview {
    StatsView()
}
