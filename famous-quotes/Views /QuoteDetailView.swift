//
//  QuoteDetailView.swift
//  famous-quotes
//
//  Created by Domanik Johnson on 6/1/21.
//

import SwiftUI

struct QuoteDetailView: View {
    var quote:Quote
    
    var body: some View {
        VStack(alignment: .center){
            Text(quote.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            ForEach(quote.quotes, id: \.self) { q in
                Text(q)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
            }
            Spacer()
        }
       
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let quote = QuotesModel()
        QuoteDetailView(quote: quote.quotes[0])
    }
}
