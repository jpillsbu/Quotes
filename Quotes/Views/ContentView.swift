//
//  ContentView.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(model.quotes) { q in
                        NavigationLink(
                            destination: QuoteDetailView(quote: q),
                            label: {
                                Card(quote: q)
                            })
                        
                    }
                }
            }
            .navigationBarTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
