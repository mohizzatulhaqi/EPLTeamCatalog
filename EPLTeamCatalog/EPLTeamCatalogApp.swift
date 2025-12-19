//
//  EPLTeamCatalogApp.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

@main
struct SportsCatalogApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {

                TeamListView()
                    .tabItem {
                        Label("Teams", systemImage: "sportscourt")
                    }

                AboutView()
                    .tabItem {
                        Label("About", systemImage: "person.circle")
                    }

            }
        }
    }
}
