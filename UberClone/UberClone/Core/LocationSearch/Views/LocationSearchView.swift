//
//  LocationSearchView.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/25/22.
//

import SwiftUI

struct LocationSearchView: View {
    
    @State private var startLocationText: String = ""
    @State private var destinationLocationText: String = ""
    
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
                
                VStack {
                     TextField("Current Location", text: $startLocationText)
                        .frame(height: 32)
                        .backgroundStyle(Color(.systemGroupedBackground))
                        .padding(.trailing)
                    
                    TextField("Where To?", text: $destinationLocationText)
                       .frame(height: 32)
                       .backgroundStyle(Color(.systemGray4))
                       .padding(.trailing)
                }
            }
        }
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}
