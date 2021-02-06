//
//  MatchInfoView.swift
//  clapped_app
//
//  Created by Alec Shunnarah on 2/6/21.
//

import SwiftUI

struct MatchInfoView: View {
    var body: some View {
        TabView {
            GraphTabView()
             .tabItem {
                Image(systemName: "phone.fill")
                Text("Graphs")
            }
            TableTabView()
              .tabItem {
                Image(systemName: "tv.fill")
                Text("Table")
            }
            MediaTabView()
              .tabItem {
                Image(systemName: "heart.fill")
                Text("Media")
            }
        }
    }
}

struct GraphTabView: View {
    var body: some View {
        GraphView()
    }
}

struct TableTabView: View {
    var body: some View {
        TableView()
    }
}

struct MediaTabView: View {
    var body: some View {
        MediaView()
    }
}

struct MatchInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MatchInfoView()
    }
}
