//
//  Landmark.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import Foundation
import SwiftUI
// Use this framework to get access to coordinates for Map
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    
    // MARK: - Helper Struct
    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
    
    // MARK: - Public Variables
    var id: Int
    var name: String
    var city: String
    var category: String
    var description: String
    var isFavorite: Bool
    var image: Image {
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    // MARK: - Private Variables
    private var imageName: String
    private var coordinates: Coordinates
    
}
