//
//  TeamController.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import Foundation
internal import Combine

class TeamController : ObservableObject {
    
    @Published var teams: [Team] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func fetchTeams() {
        isLoading = true
        errorMessage = nil
        
        let urlString = "https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League"
        
        guard let url = URL(string: urlString) else {
            errorMessage = "URL tidak valid"
            isLoading = false
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            DispatchQueue.main.async {
                self.isLoading = false
                if let error = error {
                    self.errorMessage = error.localizedDescription
                    return
                }
                
                guard let data = data else {
                    self.errorMessage = "Data tidak ada"
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode(TeamResponse.self, from: data)
                    self.teams = result.teams ?? []
                } catch {
                    self.errorMessage = "Gagal memuat data dari team"
                }
            }
        }.resume()
    }
}
