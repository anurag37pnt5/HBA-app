//
//  HomeView.swift
//  HBA
//
//  Created by Anurag Baral on 3/22/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedSegment = "ROSTERS"
    
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    SegmentView(title: "SCHEDULE", isSelected: selectedSegment == "SCHEDULE") {
                        selectedSegment = "SCHEDULE"
                    }
                    SegmentView(title: "TEAMS", isSelected: selectedSegment == "TEAMS") {
                        selectedSegment = "TEAMS"
                    }
                    SegmentView(title: "NEWS", isSelected: selectedSegment == "NEWS") {
                        selectedSegment = "NEWS"
                    }
                    SegmentView(title: "STATS", isSelected: selectedSegment == "STATS") {
                        selectedSegment = "STATS"
                    }
                    SegmentView(title: "STANDINGS", isSelected: selectedSegment == "STANDINGS") {
                        selectedSegment = "STANDINGS"
                    }
                }
            }
            .padding(.horizontal)
            switch selectedSegment {
            case "SCHEDULE":
                ScheduleView()
            case "TEAMS":
                TeamsView()
            case "NEWS":
                NewsView()
            case "STATS":
                StatsView()
            case "STANDINGS":
                StandingsView()
            default:
                TeamsView()
            }
    
            
        
            
            
            Spacer()
        }
    }
}

struct SegmentView: View {
    let title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(isSelected ? Color.blue : Color.clear)
                .foregroundColor(isSelected ? .white : .blue)
                .cornerRadius(8)
        }
    }
}

#Preview {
    HomeView()
}
