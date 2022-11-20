//
//  MainView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var currentPage: RideViews = .view1
    
    var body: some View {
        switch currentPage {
        case .view1:
            LoginView()
        case .view2:
            SignUpView()
        case .view3:
            PassengersView()
        case .view4:
            EmptyView()
        case .view5:
            EmptyView()
        case .view6:
            EmptyView()
        case .view7:
            EmptyView()
        case .view8:
            EmptyView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
