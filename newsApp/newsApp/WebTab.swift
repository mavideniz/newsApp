//
//  WebView.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 12.09.2021.
//

import SwiftUI
import WebKit



struct Webview: UIViewRepresentable {
    
    var url: String

    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else{
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    
    }
    func updateUIView(_ uiView: Webview.UIViewType, context: UIViewRepresentableContext<Webview>) {
        
    }
}
