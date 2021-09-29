//
//  FavoriteButton.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 28/9/21.
//

import SwiftUI

struct FavoriteButton: View {
    // Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
