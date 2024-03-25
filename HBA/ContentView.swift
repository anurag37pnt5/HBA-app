//
//  ContentView.swift
//  HBA
//
//  Created by Anurag Baral on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: HomeView()) {
                    VStack {
                        Image("HBAbackground")
                            .resizable()
                            
                            .frame(height: 250)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                        Text("HBA SEASON 2")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
