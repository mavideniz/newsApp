//
//  tabBar.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 9.09.2021.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        TabView{
            Text("home")
                .padding()
                .tabItem {
                    Label("News", systemImage: "list.dash")
                }
            Text("favorites")
                .tabItem { Label("Favorites", systemImage: "star") }
        }
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
