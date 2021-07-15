//
//  outfitsResponse.swift
//  ThreadApp
//
//  Created by Oladipupo Oluwatobi on 15/07/2021.
//

import Foundation

struct OutfitsResponse: Codable {
    var outfits: [Outfits]?
}


struct Outfits: Codable {
    var when: String?
    var description: String?
    var image: String?
    var occasion: String?
    var items: [Items]?
    
    enum CodingKeys: String, CodingKey {
        case when
        case description
        case image = "inspired_by_photo_url"
        case occasion
        case items
    }
}

struct Items: Codable {
    var name:String?
    var brand: String?
    var stockLevel: String?
    var imageUrl: String?
    var url: String?
    var price: String?
    var priceSince: Double?
    var previousPrice: String?
    var pricePreviousSince: Double?
    
    enum CodingKeys: String, CodingKey {
        case name
        case brand
        case stockLevel = "stock_level"
        case imageUrl = "image_url"
        case url
        case price = "price_gbp"
        case priceSince = "price_gbp_since"
        case previousPrice = "price_previous_gbp"
        case pricePreviousSince = "price_previous_gbp_since"
        
    }
    
}
