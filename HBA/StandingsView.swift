//
//  ZBallersDetailView.swift
//  HBA
//
//  Created by Anurag Baral on 3/25/24.
//

import SwiftUI

struct StandingsView: View {
    
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
    
    @State private var selectedTeamName: String?


    @State private var TeamStanding = [
    TeamStandings(name: "GSB", gamesPlayed: 2, wins: 1, losses: 1, points: 76, pointsAllowed: 63),
    TeamStandings(name: "KTM", gamesPlayed: 2, wins: 1, losses: 1, points: 70, pointsAllowed: 44),
    TeamStandings(name: "HC", gamesPlayed: 2, wins: 2, losses: 0, points: 110, pointsAllowed: 56),
    TeamStandings(name: "ZB", gamesPlayed: 2, wins: 0, losses: 2, points: 98, pointsAllowed: 87),
    TeamStandings(name: "TT", gamesPlayed: 4, wins: 4, losses: 0, points: 219, pointsAllowed: 99),
    TeamStandings(name: "SL", gamesPlayed: 6, wins: 2, losses: 4, points: 567, pointsAllowed: 988),
    TeamStandings(name: "DH", gamesPlayed: 4, wins: 1, losses: 3, points: 312, pointsAllowed: 110),
    TeamStandings(name: "FN", gamesPlayed: 6, wins: 6, losses: 0, points: 426, pointsAllowed: 411)]
    
    @State private var sortAscendingByName: Bool = true
    @State private var sortAscendingByGamesPlayed: Bool = true
    @State private var sortAscendingByWins: Bool = true
    @State private var sortAscendingByLosses: Bool = true
    @State private var sortAscendingByPoints: Bool = true
    @State private var sortAscendingByPointsAllowed: Bool = true

    
    
    // State to track sort order for age
    @State private var sortAscending: Bool = true

    var body: some View {
        VStack {
            Text("Standings")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            
            HStack {
                Button(action: {
                    sortAscendingByName.toggle()
                    TeamStanding.sort { sortAscendingByName ? $0.name < $1.name : $0.name > $1.name }
                }) {
                    Text("Team")
                        .font(.system(size: 16))
                        .underline()
                    Image(systemName: sortAscendingByName ? "arrow.up" : "arrow.down")
                        .font(.system(size: 10))
                }
                .frame(width: 70, alignment: .leading)
                Spacer()
                Button(action: {
                    sortAscendingByGamesPlayed.toggle()
                    TeamStanding.sort { sortAscendingByGamesPlayed ? $0.gamesPlayed < $1.gamesPlayed : $0.gamesPlayed > $1.gamesPlayed }
                }) {
                    HStack {
                        Text("GP")
                            .font(.system(size: 16))
                        Image(systemName: sortAscendingByGamesPlayed ? "arrow.up" : "arrow.down")
                            .font(.system(size: 10))
                    }
                }
                .frame(width: 50, alignment: .leading)
                Spacer()
                
                Button(action: {
                    sortAscendingByWins.toggle()
                    TeamStanding.sort { sortAscendingByWins ? $0.wins < $1.wins : $0.wins > $1.wins }
                }) {
                    HStack {
                        Text("W")
                            .font(.system(size: 16))
                        Image(systemName: sortAscendingByWins ? "arrow.up" : "arrow.down")
                            .font(.system(size: 10))
                    }
                }
                .frame(width: 50, alignment: .leading)
                
                Button(action: {
                    sortAscendingByLosses.toggle()
                    TeamStanding.sort { sortAscendingByLosses ? $0.losses < $1.losses : $0.losses > $1.losses }
                }) {
                    HStack {
                        Text("L")
                            .font(.system(size: 16))
                        Image(systemName: sortAscendingByLosses ? "arrow.up" : "arrow.down")
                            .font(.system(size: 10))
                    }
                }
                .frame(width: 50, alignment: .leading)
                
                Button(action: {
                    sortAscendingByPoints.toggle()
                    TeamStanding.sort { sortAscendingByPoints ? $0.points < $1.points : $0.points > $1.points }
                }) {
                    HStack {
                        Text("Pts")
                            .font(.system(size: 16))
                        Image(systemName: sortAscendingByPoints ? "arrow.up" : "arrow.down")
                            .font(.system(size: 10))
                    }
                }
                .frame(width: 50, alignment: .leading)
                
                Button(action: {
                    sortAscendingByPointsAllowed.toggle()
                    TeamStanding.sort { sortAscendingByPointsAllowed ? $0.pointsAllowed < $1.pointsAllowed : $0.pointsAllowed > $1.pointsAllowed }
                }) {
                    HStack {
                        Text("PA")
                            .font(.system(size: 16))
                        Image(systemName: sortAscendingByPointsAllowed ? "arrow.up" : "arrow.down")
                            .font(.system(size: 10))
                    }
                }
                .frame(width: 50, alignment: .leading)
                
            }
            .padding(.horizontal)
            
            Divider()
            
            List(TeamStanding) { team in
                HStack {
                    Button(team.name) {
                        self.selectedTeamName = team.name
                    }
                    .foregroundColor(.blue)
                    .frame(width: 60, alignment: .leading)
                    
                    //                    NavigationLink(destination: destinationView(for: team.name)) {
                    //                        Text(team.name)
                    //                    }
                    
                    
                    Spacer()
                    
                    Text("\(team.gamesPlayed)")
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    Text("\(team.wins)")
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    Text("\(team.losses)")
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    Text("\(team.points)")
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    Text("\(team.pointsAllowed)")
                        .frame(width: 50, alignment: .leading)
                }
                .background(NavigationLink("", destination: destinationView(for: team.name), tag: team.name, selection: $selectedTeamName).hidden())

            }
        }
    }
}

    @ViewBuilder
private func destinationView(for teamName: String) -> some View {
    switch teamName {
    case "GSB":
        GoodShotBhaiyasDetailView()
    case "KTM":
        KathmanduKingsDetailView()
    case "HC":
        HoliCrossoverDetailView()
    case "ZB":
        ZBallersDetailView()
    case "TT":
        TeamTibetDetailView()
    case "SL":
        SnowLionsDetailView()
    case "DH":
        DunkinHanumansDetailView()
    case "FN":
        FlyingNimbusDetailView()
    default:
        Text("Team details not available")
    }
}


#Preview {
    StandingsView()
}
