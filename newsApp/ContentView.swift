//
//  ContentView.swift
//  Shared
//
//  Created by Doğancan Mavideniz on 8.09.2021.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationView{
        VStack{
            
        //Searchbar Part
            searchBar()
        //TabBar Part
            tabBar()
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
