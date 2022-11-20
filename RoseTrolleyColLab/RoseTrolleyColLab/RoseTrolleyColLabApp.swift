//
//  RoseTrolleyColLabApp.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

@main
struct RoseTrolleyColLabApp: App {
    
    @State private var path: NavigationPath = .init()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                FindRideView(path: $path)
                    .navigationDestination(for: ViewOptions.self) { option in
                        option.view($path)
                    }
            }
        }
    }
    
    enum ViewOptions{
            case findRideView
            case loginSignupView
            case passengersView
            case phoneNumberView
            case riderMessageView
            case rideMapView
            //Assign each case with a `View`
            @ViewBuilder func view(_ path: Binding<NavigationPath>) -> some View{
                switch self{
                case .findRideView:
                    FindRideView(path: path)
                case .loginSignupView:
                    LoginSignupView(path: path)
                case .passengersView:
                    PassengersView(path: path)
                case .phoneNumberView:
                    PhoneNumberVIew(path: path)
                case .riderMessageView:
                    RiderMessageView(path: path)
                case .rideMapView:
                    RideMapView()
                }
            }
        }
}
