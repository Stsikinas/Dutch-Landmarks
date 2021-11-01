//
//  Ticket.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 1/11/21.
//

import Foundation

struct Ticket: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var price: Double
    var discount: Bool
    
    var priceText: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "el_GR")
        return formatter.string(from: NSNumber(value: price)) ?? ""
    }
}
