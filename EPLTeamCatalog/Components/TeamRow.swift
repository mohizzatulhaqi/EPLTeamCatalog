//
//  TeamRow.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

struct TeamRow : View {
    let team: Team
    
    var body: some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: team.strBadge ?? "")) { image in
                image.resizable()
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 50, height: 50)
            .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(team.strTeam)
                    .font(.headline)
                
                Text(team.strLocation ?? "Unknown Location")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 6)
    }
}
