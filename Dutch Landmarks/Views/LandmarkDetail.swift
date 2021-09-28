//
//  LandmarkDetail.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.locationCoordinate)
                // Extend map to the top of screen
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                // Put image heigher & reduce bottom padding to bring text heigher
                .offset(y: -130)
                .padding(.bottom, -130)
            
            // V stands for Vertical
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                // H stands for Horizontal
                HStack {
                    Text(landmark.city)
                    Spacer()
                    Text(landmark.category)
                }
                // Attributes can be set to the entire stack
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                    .foregroundColor(.blue)
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[3])
    }
}
