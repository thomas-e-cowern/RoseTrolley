//
//  RideMapView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI
import MapKit

struct RideMapView: View {
    
    @Binding var path: NavigationPath
    @Environment(\.dismiss) var dismiss
    
    @State var searchText = ""
    @State var frameHeight: CGFloat = 70
    @State var isShowing: Bool = false
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.709723, longitude:  -80.064163), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Map(coordinateRegion: $mapRegion)
                ZStack {
                    
                    VStack {
                        
                        HStack {
                            Button("Book a Trolley") {
                                // Book
//                                path.append(RoseTrolleyColLabApp.ViewOptions.riderMessageView)
                                isShowing = true
                            }
                        }
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 13)
                        .frame(width: 200, height: 80)
                    
                        Spacer()
                    }
                    .sheet(isPresented: $isShowing) {
                        LocationListView(path: $path)
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
}
//
//struct RideMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        RideMapView()
//    }
//}
