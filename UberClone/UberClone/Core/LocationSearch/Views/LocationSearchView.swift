//
//  LocationSearchView.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/25/22.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var startLocationText: String = ""
    @State private var destinationLocationText: String = ''
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 6, height: 6)
                }
            }
            
            VStack {
                 
            }
        }
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
