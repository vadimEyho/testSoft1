//
//  AppTabView.swift
//  testSoft1
//
//  Created by Вадим Эйхольс on 07.12.2023.
//

import SwiftUI

@main
struct testSoft1: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            TradeView()
                .tabItem {
                    Label("Trade", systemImage: "chart.bar.xaxis")
                }

            Top10TradersView()
                .tabItem {
                    Label("Top 10", systemImage: "person.2.square.stack")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
