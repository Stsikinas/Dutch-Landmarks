//
//  ModelData.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import Foundation

// Observe changes on object and refresh corresponding views
final class ModelData: ObservableObject {
    // Publish any changes to its data
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    // Tickets won't be modified, therefore @Published is skipped
    var tickets: [Ticket] = load("TicketData.json")
    
    // Group Landmarks based on category
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarks, by: { $0.category.rawValue })
    }
}

// Function to load data from file in main bundle
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) in bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
