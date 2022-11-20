//
//  Utilities.swift
//  NavigationStackTest
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

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
