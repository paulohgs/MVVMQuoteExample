//
//  API.swift
//  MVVMQuoteExample
//
//  Created by Paulo Henrique Gomes da Silva on 01/02/23.
//

import Foundation

struct API {
    func fetch() async throws -> Quote {
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let decodedData = try JSONDecoder().decode(Quote.self, from: data)
            return decodedData
        } catch {
            print("Invalid request: \(error)")
        }

    }
}

extension API {
    var urlRequest: URLRequest {
        let url = URL(string: "https://animechan.vercel.app/api/random")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = ["Content-type":"application/json"]
        return request
    }
}
