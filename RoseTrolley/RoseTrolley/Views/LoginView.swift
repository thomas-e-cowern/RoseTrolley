//
//  LoginView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct LoginView: View {
    
    @State private var path: [Bool] = []
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Image("rose-trolley-logo")
                Spacer()
                    .frame(height: 150)
                Button("Find a Ride") {
                    // Hail a ride coming...
                    isActive = true
                                                
                    if isActive {
                        path.append(isActive)
                    }
                }.buttonStyle(RoseButtonStyle())
            }
            .navigationDestination(for: Bool.self, destination: { value in
                SignUpView()
            })
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
