//
//  HomeView.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/23/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showLocationSearchView: Bool = false
    @State private var mapState = MapViewState.noInput
    
    var body: some View {
        ZStack(alignment: .top) {
            UberMapViewRepresentable()
                .ignoresSafeArea()
                .foregroundColor(.pink)
            
            if mapState = .noInput {
                LocationSearchView(showLocationSearchView: $showLocationSearchView)
            } else {
                LocationSearchActivtionView()
                    .padding(.top, 72)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            showLocationSearchView.toggle()
                        }
                }
            }
            
            MapViewActionButton(showLocationSearchView: $showLocationSearchView)
                .padding(.leading)
                .padding(.top, 4)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(LocationSearchViewModel())
    }
}
