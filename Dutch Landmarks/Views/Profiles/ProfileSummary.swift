//
//  ProfileSummary.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 4/11/21.
//

import SwiftUI

struct ProfileSummary: View {
    
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photo: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Achievements")
                        .font(.headline)
                    ScrollView(.horizontal) {
                        HStack {
                            AchievementBadge(name: "First Visit")
                            AchievementBadge(name: "All Museums")
                                .hueRotation(Angle(degrees: 90))
                            AchievementBadge(name: "Fun Visit")
                                .hueRotation(Angle(degrees: 25))
                                .grayscale(0.5)
                        }
                        .padding(.bottom)
                    }
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
