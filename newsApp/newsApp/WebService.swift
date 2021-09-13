//
//  WebService.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 12.09.2021.
//

import Foundation

class WebService {
    
    func getNews(searchTerm: String) async throws -> [Article]
    
    var components = URLComponents()
    components.scheme = "http"
    components.host = "newsapi.org"
    components.queryItems = [
    URLQue]
}
