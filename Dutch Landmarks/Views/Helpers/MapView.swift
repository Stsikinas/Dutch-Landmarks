//
//  MapView.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 27/9/21.
//

import SwiftUI
// Use of Maps Framework
import MapKit

struct MapView: View {
    
    var coordinates: CLLocationCoordinate2D
    
    // creation of State that can be modified
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        // Use $ to pass a reference to the object
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates)
            }
    }
    
    // Update region based on selected landmark
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: CLLocationCoordinate2D(latitude: 52.36070521902041, longitude: 4.885175884656941))
    }
}
