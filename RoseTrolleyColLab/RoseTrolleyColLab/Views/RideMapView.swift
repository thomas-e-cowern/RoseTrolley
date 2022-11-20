//
//  RideMapView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI
import MapKit

struct RideMapView: View {
    
    let locations = []
    
    @State var searchText = ""
    
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
                    }
                        .foregroundColor(.gray)
                        .padding(.leading, 13)
                    }
                Rectangle()
                    .foregroundColor(Color("LightGray"))
                }
                .frame(height: 80)
                .cornerRadius(13)
                .padding()
            }
        }
    }
}

struct RideMapView_Previews: PreviewProvider {
    static var previews: some View {
        RideMapView()
    }
}
