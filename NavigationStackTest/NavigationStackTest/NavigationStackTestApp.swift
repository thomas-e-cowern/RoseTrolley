//
//  NavigationStackTestApp.swift
//  NavigationStackTest
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

@main
struct NavigationStackTestApp: App {
    
    @State private var path: NavigationPath = .init()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                ContentView(path: $path)
                    .navigationDestination(for: ViewOptions.self) { option in
                        option.view($path)
                    }
            }
        }
    }
    
    enum ViewOptions{
        case contentView
        case secondView
        case thirdView
        //Assign each case with a `View`
        @ViewBuilder func view(_ path: Binding<NavigationPath>) -> some View{
            switch self{
            case .contentView:
                ContentView(path: path)
            case .secondView:
                SecondView(path: path)
            case .thirdView:
                ThirdView()
            }
        }
    }
}
