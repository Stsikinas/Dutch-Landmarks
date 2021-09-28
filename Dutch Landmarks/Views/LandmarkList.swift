//
//  LandmarkList.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // List with data (landmarks)
            // Identifying is unneccessary because Model (Landmark) confronts to Identifiable protocol
            List(landmarks) { landmark in
                // Links to the destination you define
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Dutch Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
