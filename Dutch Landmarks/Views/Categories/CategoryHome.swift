//
//  CategoryHome.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 3/11/21.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showProfile = false
    
    
    var body: some View {
        // Build Navigational structures
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(name: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            // Add toolbar items
            .toolbar {
                Button {
                    showProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            // Popup view to present User
            .sheet(isPresented: $showProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
