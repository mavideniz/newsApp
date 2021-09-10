//
//  HomeView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = NewsViewModelImpl(service: NewsServiceImpl())
    
    @State private var searchTerm: String = ""
    
    var body: some View {
        
        
        
        NavigationView {
            TabView {
                VStack{
                    
                    SearchBar(text: $searchTerm)
                        
//                    List{
//
//                        ForEach(viewModel.articles.filter({
//                            "\($0)".contains(searchTerm)
//                        }) , id:\.url) { item in
//                                ArticleView(article: item)
//                        }
//
//
//                    }
                    List(viewModel.articles.filter({
                        "\($0)".contains(searchTerm) || searchTerm.isEmpty
                    }) , id:\.url) { item in
                            ArticleView(article: item)
                    }
                }.tabItem {
                    Label("Menu", systemImage: "list.dash")
                    }
                //Favorited need add
                Text("fav")
                    .tabItem {
                        Label("Favorites", systemImage: "star")
                    }
                
            }.onAppear(perform: viewModel.getArticles)
            .navigationTitle(Text("Appcent News App 🗞"))
        }
        
                
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}
