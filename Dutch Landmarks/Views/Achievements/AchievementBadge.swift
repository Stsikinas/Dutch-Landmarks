//
//  AchievementBadge.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 5/11/21.
//

import SwiftUI

struct AchievementBadge: View {
    
    var name: String
    
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for name: \(name)")
        }
    }
}

struct AchievementBadge_Previews: PreviewProvider {
    static var previews: some View {
        AchievementBadge(name: "Test Achievement")
    }
}
