//
//  Team.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import Foundation

struct TeamResponse: Codable {
    let teams: [Team]?
}

struct Team: Identifiable, Codable {

    let idTeam: String
    let strTeam: String
    let intFormedYear: String?
    let strSport: String?
    let strLeague: String?
    let strStadium: String?
    let intStadiumCapacity: String?
    let strLocation: String?
    let strCountry: String?
    let strDescriptionEN: String?
    let strBadge: String?
    let strFanart1: String?

    var id: String { idTeam }
}
