//
//  MatchView.swift
//  clapped_app
//
//  Created by Alec Shunnarah on 2/6/21.
//

import SwiftUI

struct MatchView: View {
    var competitions = ["FIFA 20", "Ping Pong", "Tennis"]
    var players = ["Alec", "Evan", "Rachael", "Carli"]
    @State private var selectedComp = 0
    @State private var selectedP1 = 0
    @State private var selectedP2 = 1
    @State private var hasScoresToggle = true
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                    
                Form {
                    Picker(selection: $selectedComp, label: Text("Competition")) {
                        ForEach(0 ..< self.competitions.count) {
                            Text(self.competitions[$0])
                        }
                    }
                    Toggle(isOn: $hasScoresToggle) {
                        Text("Has Scores")
                    }
                    Picker(selection: $selectedP1, label: Text("Player 1")) {
                        ForEach(0..<self.players.count) {
                            Text(self.players[$0])
                        }
                    }
                    Picker(selection: $selectedP2, label: Text("Player 2")) {
                        ForEach(0..<self.players.count) {
                            Text(self.players[$0])
                        }
                    }
                }
                NavigationLink(destination: MatchInfoView()) {
                    Text("Next")
                        .font(.title)
                }
            }
            .navigationBarTitle("Match Settings")
        }
        
        
    }
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
