//
//  DataService.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        // Parse Local JSON Data
        // Get url path to json data
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        // Check to make sure path is not nil
        guard pathString != nil else {
            return [Quote]()
        }
        
        // Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create data object
            let data = try Data(contentsOf: url)
            
            // Decode data with json decoder
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for q in quoteData {
                    q.id = UUID()
                }
                
                return quoteData
                
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        // Incase something fails
        return [Quote]()
    }
}
