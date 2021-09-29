//
//  Dutch_LandmarksApp.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 27/9/21.
//

import SwiftUI

// App Entry Point
@main
struct Dutch_LandmarksApp: App {
    
    // Initialize a model object for a given property only once during the life time of the app
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
