//
//  TeamDetailView.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

struct TeamDetailView: View {
    let team: Team

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                AsyncImage(url: URL(string: team.strFanart1 ?? team.strBadge ?? "")) { image in
                    image.resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 200)
                .clipped()
                .cornerRadius(12)

                Text(team.strTeam)
                    .font(.largeTitle)
                    .bold()

                Divider()

                InfoRow(title: "Sport", value: team.strSport)
                InfoRow(title: "League", value: team.strLeague)
                InfoRow(title: "Founded", value: team.intFormedYear)
                InfoRow(title: "Stadium", value: team.strStadium)
                InfoRow(title: "Capacity", value: team.intStadiumCapacity)
                InfoRow(title: "Location", value: team.strLocation)

                if let description = team.strDescriptionEN {
                    Text("Description")
                        .font(.headline)
                        .padding(.top)

                    Text(description)
                        .font(.body)
                }
            }
            .padding()
        }
        .navigationTitle("Detail Team")
        .navigationBarTitleDisplayMode(.inline)
    }
}
