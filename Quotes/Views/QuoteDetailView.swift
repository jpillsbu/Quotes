//
//  QuoteDetailView.swift
//  Quotes
//
//  Created by John Pillsbury on 3/25/21.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote:Quote
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach (quote.quotes, id: \.self) { quote in
                    Text(quote)
                        .font(.body)
                        .padding([.leading,.top])
                    
                }
            }
            .navigationBarTitle(quote.author)
        }
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetailView(quote: Quote.getTestData())
    }
}
