//
//  Location.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
