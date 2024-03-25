//
//  Common.swift
//  HBA
//
//  Created by Anurag Baral on 3/28/24.
//

import Foundation


struct Player: Identifiable {
  let id = UUID()
  let name: String
  let height: String
  let age: String
  let teamLogo : String

    var heightInInches: Int {
        let components = height.split(separator: "'").flatMap { $0.split(separator: "\"") }
        let feet = Int(components[0]) ?? 0
        let inches = Int(components[1]) ?? 0
        return feet * 12 + inches
    }
}


struct TeamStandings: Identifiable {
    let id = UUID()
    let name: String
    let gamesPlayed: Int
    let wins: Int
    let losses : Int
    let points: Int
    let pointsAllowed: Int
}

struct PlayerStats: Identifiable {
    let id = UUID()
    let name: String
    let PPG: Double
    let RPG: Double
    let APG: Double
    let SPG: Double
    let BPG: Double
    let TPG: Double
}
