//
//  TrolleyMapView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI
import MapKit

struct TrolleyMapView: View {
    
    @Binding var path: NavigationPath
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.709723, longitude:  -80.064163), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $mapRegion)
        }
    }
}

//struct TrolleyMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrolleyMapView()
//    }
//}
