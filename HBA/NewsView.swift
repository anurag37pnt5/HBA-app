//
//  NewsView.swift
//  HBA
//
//  Created by Anurag Baral on 3/27/24.
//

import SwiftUI

struct NewsView: View {
    // Example struct for news item
    struct NewsItem: Identifiable {
        let id = UUID()
        let title: String
        let destination: String  // Identifier for the destination view
    }

    // Sample news items
    let newsItems = [
        NewsItem(title: "HBA Rules and Regulations", destination: "RulesView"),
        NewsItem(title: "Season Opener and Key Matchups", destination: "MatchupsView")
    ]

    var body: some View {
        NavigationView {
            List(newsItems) { item in
                NavigationLink(destination: destinationView(for: item)) {
                    HStack {
                        Text("•")  // Bullet point
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("News")
        }
    }
    
    @ViewBuilder
    private func destinationView(for item: NewsItem) -> some View {
        switch item.destination{
        case "RulesView":
            RulesView()
        case "MatchupsView":
            Text("Matchup details here")
        default:
            Text("In progress")
        }
    }
    
    
    
}

#Preview {
    NewsView()
}
