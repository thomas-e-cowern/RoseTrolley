//
//  LocationListView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct LocationListView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var path: NavigationPath
    
    let locations: [String] = ["313 Datura street, West Palm Beach, FL 33417", "3123 Main street, West Palm Beach, FL 33417", "3149 James street, West Palm Beach, FL 33417", "391 Clematis street, West Palm Beach, FL 33417", "1202 Fern, West Palm Beach, FL 33417", "456 Beach street, West Palm Beach, FL 33417"]
    
    @State var searchText = ""
    
    var body: some View {

        ZStack {
            
            VStack {
                Text("Where can Rose Trolley take you today?")
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search ..", text: $searchText)
                    

                }
                .foregroundColor(.gray)
                .padding(.leading, 13)
                
                List {
                    ForEach(searchResults, id: \.self) { location in
                        Button {
                            path.append(RoseTrolleyColLabApp.ViewOptions.riderMessageView)
                            dismiss()
                        } label: {
                            Text(location)
                                .foregroundColor(Color("Primary"))
                        }

                    }
                }
                .searchable(text: $searchText)
                
                Spacer()
            }
        Rectangle()
            .foregroundColor(Color("LightGray"))
        }
    }
    var searchResults: [String] {
        if searchText.isEmpty {
            return locations
        } else {
            return locations.filter { $0.contains(searchText) }
        }
    }
}

//struct LocationListView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationListView()
//    }
//}
