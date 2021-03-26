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
            List (model.quotes) { q in
                ZStack {
                    NavigationLink(
                        destination: QuoteDetailView(quote: q)) {
                            EmptyView()
                    }.frame(width: 0, height: 0)
                    .hidden()
                    Image(q.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text(q.titleQuote)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.all)
                            .shadow(radius: 10)
                        Text("- " + q.author)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.all)
                            .shadow(radius: 10)
                    }
                }
                .padding(.vertical)
            }
            .navigationBarTitle("Famous Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
