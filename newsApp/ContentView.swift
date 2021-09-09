//
//  ContentView.swift
//  Shared
//
//  Created by Doğancan Mavideniz on 8.09.2021.
//

import SwiftUI



struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
        VStack{
            
            //Searchbar Part
            HStack {
                TextField("Search...", text: $searchText)
                    .padding(.leading, 24)
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(8)
            .padding(.horizontal)
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    Button(action: { searchText = "" }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .padding(.vertical)
                    })
                }
                .padding(.horizontal, 32)
                .foregroundColor(.gray)
            )
        //TabBar Part
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
        .navigationBarTitle("Appcent News App")
    }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
