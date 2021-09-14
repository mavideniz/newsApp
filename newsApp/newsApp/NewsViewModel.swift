//
//  NewsViewModel.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import Foundation
import Combine

protocol NewsViewModel {
    func getArticles()
}

class NewsViewModelImpl: ObservableObject, NewsViewModel{
    
        var userSubject = "football"
    
        private let service: NewsService
    
        var articles = [Article]()
        private var cancellables = Set<AnyCancellable>()
    
        @Published private(set) var state: ResultState = .loading
    
        init(service: NewsService){
            self.service = service
        }
    
        
    func getArticles() {
        
        self.state = .loading
        
        let cancellable = service
            .request(from: .getNews)
            .sink { res in
                switch res {
                
                case .finished:
                    self.state = .succes(content: self.articles)
                case .failure(let error):
                    self.state = .failed(error: error)
                }
            } receiveValue: { response in
                self.articles = response.articles
            }

        self.cancellables.insert(cancellable)
    }
}
