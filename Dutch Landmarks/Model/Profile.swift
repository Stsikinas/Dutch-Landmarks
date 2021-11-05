//
//  Profile.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 3/11/21.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    // default is used from SWIFT for a different reason, therefore to use default in our scope ` is needed
    static let `default` = Profile(username: "s.tsikinas")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
    
}
