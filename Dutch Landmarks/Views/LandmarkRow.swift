//
//  LandmarkRow.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

// Changes here are only for canvas purposes
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        // Group view contents. Rendered as seperate previews
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
                
        }
        // Set the approximate size of view
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
