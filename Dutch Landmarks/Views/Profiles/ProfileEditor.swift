//
//  ProfileEditor.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 8/11/21.
//

import SwiftUI

struct ProfileEditor: View {
    
    @Binding var profile: Profile
    
    // Create min and max range of a date variable
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                    .bold()
                Divider()
                // TextField uses a binding value of the struct provided
                TextField("Username", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Allow Notifications")
                    .bold()
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Season Photo")
                    .bold()
                Picker("Seasonal Photo", selection:$profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Probable Visit Date")
                    .bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
