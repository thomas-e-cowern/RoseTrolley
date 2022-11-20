//
//  RiderMessageView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct RiderMessageView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack {
            VStack {
                Text("Great!")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
                Text("Lets View a Ride!")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("View Rides") {
                        // Move to next screen
                        path = NavigationPath.init()
                        path.append(RoseTrolleyColLabApp.ViewOptions.rideMapView)
                    }
                    .buttonStyle(RoseButtonStyle())
                }
                .padding()
            }
        }
    }
    
    func printPath() {
        print("Path: \(path)")
    }
}
//
//struct RiderMessageView_Previews: PreviewProvider {
//    static var previews: some View {
//        RiderMessageView()
//    }
//}
