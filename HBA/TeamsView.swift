//
//  TeamsView.swift
//  HBA
//
//  Created by Anurag Baral on 3/24/24.
//

import SwiftUI

struct TeamsView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    NavigationLink(destination: ZBallersDetailView()) {
                        Image("ZBallers")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    
                    NavigationLink(destination: DunkinHanumansDetailView()) {
                        Image("DunkinHanumans")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    NavigationLink(destination: FlyingNimbusDetailView()) {
                        Image("FlyingNimbus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    NavigationLink(destination: GoodShotBhaiyasDetailView()) {
                        Image("GoodShotBhaiyas")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    NavigationLink(destination: SnowLionsDetailView()) {
                        Image("SnowLions")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    NavigationLink(destination: TeamTibetDetailView()) {
                        Image("TeamTibet")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    NavigationLink(destination: KathmanduKingsDetailView()) {
                        Image("KathmanduKings")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    
                    
                    NavigationLink(destination: HoliCrossoverDetailView()) {
                        Image("HoliCrossover")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }


                    
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    TeamsView()
}

