//
//  UberMapViewRepresentable.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/23/22.
//

import SwiftUI
import MapKit

struct UberMapViewRepresentable: UIViewRepresentable {
    
    typealias UIViewType = <#type#>
    
    let mapView = MKMapView()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
}
