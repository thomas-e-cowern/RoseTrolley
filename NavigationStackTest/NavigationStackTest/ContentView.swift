//
//  ContentView.swift
//  NavigationStackTest
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Button {
                //Append to the path the enum value
                path.append(NavigationStackTestApp.ViewOptions.secondView)
            } label: {
                Text("Go To Second View")
            }
        }
    }
}
