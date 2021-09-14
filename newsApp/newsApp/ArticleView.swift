//
//  ArticleView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import SwiftUI
import URLImage

struct ArticleView: View {
    
    let article: Article
    var body: some View {
        HStack{
            if let imgUrl = article.urlToImage,
               let url = URL(string: imgUrl) {

                URLImage(url,
                         content: { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                         } )
                    .frame(width: 100, height: 100)
                    .cornerRadius(5)
            } else {
                Image(systemName: "photo.fill")
                    .background(Color(.white))
                    .background(Color.gray)
                    .frame(width: 100, height: 100)
                    
            }
        
            VStack(alignment: .leading, spacing: 4, content: {
                Text(article.title ?? "")
                    .frame(width: 250,height: 50)
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                Text(article.description ?? "")
                    .frame(width: 250, height: 100)
            })
                
            }
        }
        
    }

struct PlaceHolderImageView: View{
    
    var body: some View{
        Image(systemName: "photo.fill")
            .foregroundColor(.black)
            .background(Color.gray)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
    }
    
    
}


struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData)
            .previewLayout(.sizeThatFits)
    }
}
