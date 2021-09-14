//
//  NewsEndpoint.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import Foundation

var viewModel = NewsViewModelImpl(service: NewsServiceImpl())
protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
}

enum NewsAPI {
    
    case getNews
}

extension NewsAPI: APIBuilder {

    
    var urlRequest: URLRequest {
        
        return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
    }
    
    
    var baseUrl: URL {
        switch self {
        case .getNews:
            return URL(string: "https://newsapi.org/v2/everything?q=\(viewModel.userSubject)&page=1&apiKey=90f78b5e459f4557a6d285161db89387")!
        }
    }
    
    var path: String {
        return ""
    }
    
}
