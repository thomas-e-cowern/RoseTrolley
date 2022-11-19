//
//  ContentView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct ContentView: View {
    
    @State var isPresented: Bool = false
    @StateObject var locationManager = LocationManager()
    @State private var path: [Bool] = []
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.714439, longitude: -80.054947), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var locations = [Location(name: "You are here", coordinate: CLLocationCoordinate2D(latitude: 26.7, longitude: -80.1))]

    var loczations2: [Location] = []
    
    var body: some View {
        NavigationStack(path: $path){
            VStack {
                Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                    MapMarker(coordinate: location.coordinate)
                }
                .onAppear {
                    locationManager.requestLocation()
                }
                Button("Reserve a ride") {
                    isPresented = true

                    if isPresented {
                        path.append(isPresented)
                    }
                }
                .buttonStyle(.borderedProminent)
                if let location = locationManager.location {
                    Text("Your location: \(location.latitude), \(location.longitude)")
                }

                LocationButton {
                    locationManager.requestLocation()
                }
                .frame(height: 44)
                .padding()
                }
                .padding()
            .navigationDestination(for: Bool.self, destination: { value in
               RequestRideView()
           })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
