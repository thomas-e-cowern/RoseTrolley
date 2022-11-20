//
//  FindRideView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct FindRideView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Image("rose-trolley-logo")
            Spacer()
                .frame(height: 100)
            Button("Find a Ride") {
                path.append(RoseTrolleyColLabApp.ViewOptions.loginSignupView)
            }
            .buttonStyle(RoseButtonStyle())
        }
    }
}
