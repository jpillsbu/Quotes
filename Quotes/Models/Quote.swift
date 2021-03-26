//
//  Quote.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import Foundation

struct Quote: Decodable, Identifiable {
    var id:UUID?
    var author:String
    var titleQuote:String
    var image:String
    var quotes:[String]
    
    static func getTestData() -> Quote {
        let testData = Quote( id: UUID(), author: "Test", titleQuote: "HELLO THERE THIS IS SOMETHING MUCH BIGGER AND WILL MAYBE BREAK", image: "tesla", quotes: ["Quote 1", "Quote2"])
        
        return testData
    }
}
