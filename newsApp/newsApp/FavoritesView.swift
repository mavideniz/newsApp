//
//  FavoritesView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 14.09.2021.
//

import SwiftUI

struct FavoritesView: View {
    
    @State var listItems = ["News Favorites Demo 1", "News Favorites Demo 2", "News Favorites Demo 3"]
       
       var body: some View {
           List {
               ForEach(listItems, id: \.self) { (item) in
                   Text(item)
               }.onDelete(perform: self.deleteItem)
           }
       }
       
       private func deleteItem(at indexSet: IndexSet) {
           self.listItems.remove(atOffsets: indexSet)
       }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
