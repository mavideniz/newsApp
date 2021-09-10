//
//  APIError.swift
//  newsApp
//
//  Created by Doğancan Mavideniz on 10.09.2021.
//

import Foundation

enum APIError: Error {
    case decodingError
    case ErrorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
           return "Failed to decode."
        case .ErrorCode(let code):
            return "\(code) - Something went wrong."
        case .unknown:
            return "The error is unknown."
        }
    }
}
