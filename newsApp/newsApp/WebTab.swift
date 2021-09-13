//
//  WebView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 12.09.2021.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        Webview(url: URL(string: "https://google.com")!)
    }
}

struct Webview: UIViewRepresentable {
    let url: URL

    func makeUIView(context: UIViewRepresentableContext<Webview>) -> WKWebView {
        let webview = WKWebView()

        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)

        return webview
    }

    func updateUIView(_ webview: WKWebView, context: UIViewRepresentableContext<Webview>) {
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)
    }
}
