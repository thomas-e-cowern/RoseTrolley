//
//  LocationSearchResultsCell.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/25/22.
//

import SwiftUI

struct LocationSearchResultsCell: View {
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .accentColor(.white)
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                Text("Rose Trolley")
                    .font(.body)
                
                Text("123 Main Street, West Palm Beach, FL 33417")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                
                Divider()
            }
        }
        .padding(.leading)
    }
}

struct LocationSearchResultsCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultsCell()
    }
}
