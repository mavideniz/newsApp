//
//  DetailView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 11.09.2021.
//

import SwiftUI
import URLImage

struct DetailView: View {
    
    let article: Article
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                if let imgUrl = article.image,
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
                            Text(article.date ?? "")
                                .padding(-4)
                        }.font(.footnote)
                    }.padding(-10)
                Text(article.articleDescription ?? "")
                    .padding()
                Button(action: {
                    print("test")
                }
                , label: {
                    Text("News Source")
                })
                .padding()
                .foregroundColor(.black)
                .padding(0)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 2)
                )
                Spacer()
            }
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
    }
func shareButton() {
        let url = URL(string: "https://dogancan.dev")
        let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

        UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(article: Article.dummyData)
    }
}
