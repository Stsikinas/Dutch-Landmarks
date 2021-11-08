//
//  ProfileHost.swift
//  Dutch Landmarks
//
//  Created by Epsilon User on 4/11/21.
//

import SwiftUI

struct ProfileHost: View {
    // storage in the environment for values you can access using the @Environment property wrapper. Access the editMode value to read or write the edit scope.
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            HStack {
                Spacer()
                // Default button to edit values in view
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
            
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
