//
//  QuoteViewModel.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 02/03/2021.
//

import Foundation
import SwiftUI
import Combine

class QuoteViewModel: ObservableObject{
    @Published var quotes = [Quote]()
    private let quoteUrl = "http://127.0.0.1:8080/quotes"
    private var task: AnyCancellable?


    init() {
        fetchQuotes()
    }
    
    func fetchQuotes() -> Void {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        task = URLSession.shared.dataTaskPublisher(for: URL(string: quoteUrl)!)
            .map { $0.data }
            .decode(type: [Quote].self, decoder: decoder)
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .receive(on: RunLoop.main)
            .assign(to: \QuoteViewModel.quotes, on: self)
    }
    
    func postQuote() -> Void {
        //TODO: Implements post
    }
    
    func updateQuote(withId: UUID) -> Void {
        //TODO: Implements patch/put
    }
    
    func deleteQuote(withId: UUID) -> Void {
        //TODO: Implements delete
    }
    
}
