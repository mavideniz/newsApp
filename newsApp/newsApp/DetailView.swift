//
//  DetailView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 11.09.2021.
//

import SwiftUI
import URLImage


struct DetailView: View {
    
    
    @StateObject var viewModel = NewsViewModelImpl(service: NewsServiceImpl())
    
    let article: Article
    
    var body: some View {
        VStack{
        ZStack{
            VStack{
                if let imgUrl = article.urlToImage,
                   let url = URL(string: imgUrl) {

                    URLImage(url,
                             content: { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                             } )
                        .frame(width: 320, height: 200)
                        .cornerRadius(5)
                } else {
                    Image(systemName: "photo.fill")
                        .background(Color(.white))
                        .background(Color.gray)
                        .frame(width: 250, height: 250)

                }
                
                    Text(article.title ?? "")
                        .padding()
                        .font(.headline)

                    HStack{
                        Group{
                            Image(systemName: "newspaper.fill")
                            Text(article.author ?? "")
                                .padding(-4)
                            Image(systemName: "calendar")
                            Text(article.publishedAt ?? "")
                                .padding(-4)
                        }.font(.footnote)
                    }.padding(-10)
                Text(article.description ?? "")
                    .padding()
                
                Button(action: {}, label: {
                    NavigationLink(destination: Webview(url: article.url ?? "")) {
                         Text("News Source")
                     }
                })
                .padding()
                .foregroundColor(.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 2)
                )
            }
        }}
        .navigationBarItems(trailing: HStack {
        Button(action: shareButton) {
            Image(systemName: "square.and.arrow.up")
                .padding(2)
                .font(.title2)
        }
        Button(action: {
            print("fav test")
        }) {
            Image(systemName: "star")
                .padding()
                .font(.title2)
        }
    })
    }
    }
func shareButton() {
    
    let url = URL(string: Article.dummyData.url ?? "")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

        UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(article: Article.dummyData)
    }
}
