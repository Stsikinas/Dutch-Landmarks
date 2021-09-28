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
    
    // creation of State that can be modified
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 52.36070521902041, longitude: 4.885175884656941),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        // Use $ to pass a reference to the object
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
