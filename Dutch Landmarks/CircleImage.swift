//
//  CircleImage.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 27/9/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("rijksmuseum")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.orange, lineWidth: 2.5))
            .shadow(radius: 8)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
