//
//  Quote.swift
//  famous-quotes
//
//  Created by Domanik Johnson on 6/1/21.
//

struct Quote: Decodable, Identifiable {
    var id: Int = 0
    var name:String = ""
    var quote:String = ""
    var quotes:[String] = []
    var image:String = ""
    
    init() {
        
    }
}
