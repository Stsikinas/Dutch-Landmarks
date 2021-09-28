//
//  Landmark.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import Foundation

struct Landmark: Codable, Hashable {
    
    // MARK: - Variables
    var id: Int
    var name: String
    var state: String
    var description: String
}
