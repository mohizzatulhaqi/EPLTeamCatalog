//
//  InfoRow.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

struct InfoRow: View {
    let title: String
    let value: String?

    var body: some View {
        if let value = value, !value.isEmpty {
            HStack {
                Text(title)
                    .fontWeight(.semibold)
                Spacer()
                Text(value)
                    .foregroundColor(.secondary)
            }
        }
    }
}
