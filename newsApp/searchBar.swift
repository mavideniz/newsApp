//
//  searchBar.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 9.09.2021.
//

import SwiftUI

struct searchBar: View {
    
    @State private var searchText = ""
    var body: some View {
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
    }
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        searchBar()
    }
}
