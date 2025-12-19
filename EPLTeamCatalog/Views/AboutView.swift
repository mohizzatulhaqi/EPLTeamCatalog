//
//  AboutView.swift
//  EPLTeamCatalog
//
//  Created by Moh. Izzatul Haqi on 19/12/25.
//

import SwiftUI

struct AboutView : View {
    var body: some View {
        VStack(spacing: 16) {
            Image("Profile")
                .resizable()
                .frame(width: 250, height: 220)
                .clipShape(Circle())
            
            Text("Florian Wirtz")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("iOS Developer")
                .font(.title)
            
            Text("I'm a iOS Developer based in Munich, Germany. I specialize in building user-friendly and performant applications using Swift and SwiftUI.")
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
