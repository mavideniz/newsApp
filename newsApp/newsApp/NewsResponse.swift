//
//  NewsResponse.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {

    let author: String?
    let url: String?
    let source, title: String?
    let articleDescription: String?
    let image: String?
    let date: String?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    
//    {
//      "articles": [
//        {
//          "author": "The Associated Press",
//          "url": "https://www.nbcnews.com/news/sports/teen-dream-raducanu-18-fernandez-19-u-s-open-final-n1278891",
//          "source": "NBC News",
//          "title": "Teen dream: Raducanu, 18, Fernandez, 19, into U.S. Open final - NBC News",
//          "description": "Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.",
//          "image": "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2021_36/3504814/210910-emma-raducanu-mb-0940.JPG",
//          "date": "2021-09-10T08:57:00Z"
//        },
    
    static var dummyData: Article{
        .init(
              author: "The Associated Press",
              url: "https://www.nbcnews.com/news/sports/teen-dream-raducanu-18-fernandez-19-u-s-open-final-n1278891",
              source: "NBC News",
              title: "Teen dream: Raducanu, 18, Fernandez, 19, into U.S. Open final - NBC News",
              articleDescription: "Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.Emma Raducanu and Leylah Fernandez will meet in the U.S. Open Final on Saturday for the first major final between two teens since 1999.",
              image: "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2021_36/3504814/210910-emma-raducanu-mb-0940.JPG",
              date: "01-01-0101")
    }
}

