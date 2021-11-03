//
//  CategoryRow.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 3/11/21.
//

import SwiftUI

struct CategoryRow: View {
    var name: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 180)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    
    static var previews: some View {
        CategoryRow(name: landmarks[0].category.rawValue, items: Array(landmarks.prefix(3)))
    }
}
