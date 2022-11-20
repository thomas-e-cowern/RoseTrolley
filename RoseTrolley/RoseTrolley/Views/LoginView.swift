//
//  LoginView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("rose-trolley-logo")
            Spacer()
                .frame(height: 150)
            Button("Find a Ride") {
                // Hail a ride coming...
            }.buttonStyle(RoseButtonStyle())
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
