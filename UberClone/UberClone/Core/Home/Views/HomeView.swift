//
//  HomeView.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
            
            if showLocationSearchView {
                LocationSearchView()
            } else {
                LocationSearchActivtionView()
                    .padding(.top, 72)
                    .onTapGesture {
                        showLocationSearchView.toggle()
                }
            }
            
            MapViewActionButton()
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
