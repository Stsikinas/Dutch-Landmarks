//
//  LandmarkDetail.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        // V stands for Vertical
        VStack {
            MapView()
                // Extend map to the top of screen
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                // Put image heigher & reduce bottom padding to bring text heigher
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Dutch Landmarks")
                    .font(.title)
                // H stands for Horizontal
                HStack {
                    Text("Rijksmuseum")
                    Spacer()
                    Text("Amsterdam")
                }
                // Attributes can be set to the entire stack
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                    .foregroundColor(.blue)
                Text("About Rijksmuseum")
                    .font(.title2)
                Text("The Rijksmuseum is a Dutch national museum dedicated to arts and history in Amsterdam.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
