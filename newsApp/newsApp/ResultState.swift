//
//  ResultState.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import Foundation

enum ResultState {
    case loading
    case succes(content: [Article])
    case failed(error: Error)
}
