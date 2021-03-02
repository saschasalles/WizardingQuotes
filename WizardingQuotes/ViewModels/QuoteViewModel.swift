//
//  QuoteViewModel.swift
//  WizardingQuotes
//
//  Created by Sascha Sallès on 02/03/2021.
//

import Foundation
import SwiftUI

class QuoteViewModel: ObservableObject{
    @Published var quotes = [Quote]()
    
    init() {
        fetchQuotes()
    }
    
    func fetchQuotes() -> Void {
        //TODO: Implements get
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
