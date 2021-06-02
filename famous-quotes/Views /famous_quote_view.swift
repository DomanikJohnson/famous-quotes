//
//  ContentView.swift
//  famous-quotes
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct famous_quote_view: View {
    
    @ObservedObject var model = QuotesModel()
    
    var body: some View {
        NavigationView {
        ScrollView {
                    ForEach(model.quotes) { quote in
                        NavigationLink(
                            destination: QuoteDetailView(quote: quote),
                            label: {
                        VStack{
                            ZStack{
                                Image(quote.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 280, alignment: .center)
                                   .clipped()
                                .cornerRadius(10)
                                VStack(alignment: .leading){

                                Text(quote.quote)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                    .frame(width: 250)
                                
                                    Text("- " + quote.name )
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .multilineTextAlignment(.leading)
                                        .padding(.top)
                                }
                            }
                        }
                        .padding(.bottom)
                        
                    })
            }
       
        }.navigationBarTitle("Quotes")
        }
    }


struct famous_quote_Previews: PreviewProvider {
    static var previews: some View {
        famous_quote_view()
    }
}
}
