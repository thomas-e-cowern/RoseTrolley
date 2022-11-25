//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/23/22.
//

import SwiftUI

@main
struct UberCloneApp: App {
    
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
