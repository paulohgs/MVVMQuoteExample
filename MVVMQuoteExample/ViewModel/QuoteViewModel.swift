//
//  QuoteViewModel.swift
//  MVVMQuoteExample
//
//  Created by Paulo Henrique Gomes da Silva on 01/02/23.
//

import Foundation

class QuoteViewModel {
    var bind: ((_ model: Quote) -> Void)?
    var quote: Quote = Quote(anime: "", character: "", quote: "")

    func getQuote() {
        Task {
            do {
                self.quote = try await API().fetch()
                DispatchQueue.main.async {
                    self.bind?(self.quote)
                }
            } catch {
                print("Invalid request: \(error)")
            }
        }
    }
}
