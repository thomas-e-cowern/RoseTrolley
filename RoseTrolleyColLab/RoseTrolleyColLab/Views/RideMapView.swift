//
//  RideMapView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI
import MapKit

struct RideMapView: View {
    
    let locations: [String] = ["313 Datura street, West Palm Beach, FL 33417", "3123 Main street, West Palm Beach, FL 33417", "3149 James street, West Palm Beach, FL 33417", "391 Clematis street, West Palm Beach, FL 33417", "1202 Fern, West Palm Beach, FL 33417", "456 Beach street, West Palm Beach, FL 33417"]
    
    @State var searchText = ""
    @State var frameHeight: CGFloat = 300
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.709723, longitude:  -80.064163), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Map(coordinateRegion: $mapRegion)
                ZStack {
                    
                    VStack {
                        Text("Where can Rose Trolley take you today?")
                        HStack {
                            Image(systemName: "magnifyingglass")
                            TextField("Search ..", text: $searchText)
                            Button {
                                // Book
                            } label: {
                                Image("rose")
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 30, height: 30)

                        }
                        .foregroundColor(.gray)
                        .padding(.leading, 13)
                        
                        List {
                            ForEach(searchResults, id: \.self) { location in
                                Button {
                                    
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
                .frame(height: frameHeight)
                .cornerRadius(13)
                .padding()
            }
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

struct RideMapView_Previews: PreviewProvider {
    static var previews: some View {
        RideMapView()
    }
}
