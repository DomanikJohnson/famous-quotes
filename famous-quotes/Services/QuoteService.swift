//
//  QuoteService.swift
//  famous-quotes
//
//  Created by Domanik Johnson on 6/1/21.
//

import Foundation

class QuoteService {
    

    // Grab JSon data from quote file
   static func getQuoteData() -> [Quote] {
        
        
        // Get path of json
        let pathStirng = Bundle.main.path(forResource: "quote", ofType: "json")
        
        guard pathStirng != nil  else{
            return [Quote]()
        }
        
        // Get URL
        let url = URL(fileURLWithPath: pathStirng!)

        do {
            // Create data object
          let data =   try Data(contentsOf: url)
            
            // Create Decoder
            let decoder = JSONDecoder()
            
            //Decode the data
            let quoteData = try decoder.decode([Quote].self, from: data)
            
         
            
            print("gfood")
            
            return quoteData
        } catch  {
            print(error)
        }
        
        
        return [Quote]()
        
        
    }
}
