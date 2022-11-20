//
//  FindRideView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct FindRideView: View {
    var body: some View {
        VStack {
            Image("rose-trolley-logo")
            Spacer()
                .frame(height: 100)
            Button("Find a Ride") {
                
            }
            .buttonStyle(RoseButtonStyle())
        }
    }
}

struct FindRideView_Previews: PreviewProvider {
    static var previews: some View {
        FindRideView()
    }
}
