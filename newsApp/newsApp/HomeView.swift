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
                    List(viewModel.articles.filter({
                        "\($0)".contains(searchTerm) || searchTerm.isEmpty
                    }) , id:\.url) { item in
                            ArticleView(article: item)
                    }
                }.tabItem {
                    Label("Menu", systemImage: "list.dash")
                    }
                //Favorites need add
                Text("fav")
                    .tabItem {
                        Label("Favorites", systemImage: "star")
                    }
                
                // MARK: ORNEK / BURASI SILINECEK
                DetailView(article: Article.dummyData)
                    .tabItem {
                        Label("DetailsDemo", systemImage: "hourglass")
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
