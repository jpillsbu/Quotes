//
//  QuoteModel.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        // Create instance of data service and get the data
        self.quotes = DataService.getLocalData()
    }
}
