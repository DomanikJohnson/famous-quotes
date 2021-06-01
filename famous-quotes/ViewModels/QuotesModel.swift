//
//  QuotesModel.swift
//  famous-quotes
//
//  Created by Domanik Johnson on 6/1/21.
//

import Foundation

class QuotesModel:ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        quotes = QuoteService.getQuoteData()
    }
}
