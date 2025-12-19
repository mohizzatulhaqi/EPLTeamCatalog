//
//  TeamListView.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

struct TeamListView: View {

    @StateObject private var controller = TeamController()

    var body: some View {
        NavigationStack {
            Group {
                if controller.isLoading {
                    ProgressView("Memuat data tim...")
                } else if let error = controller.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    List(controller.teams) { team in
                        NavigationLink {
                            TeamDetailView(team: team)
                        } label: {
                            TeamRow(team: team)
                        }
                    }
                }
            }
            .navigationTitle("Teams")
        }
        .onAppear {
            controller.fetchTeams()
        }
    }
}

#Preview {
    TeamListView()
}

