//
//  Quote.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:UUID?
    var author:String
    var titleQuote:String
    var image:String
    var quotes:[String]
}
