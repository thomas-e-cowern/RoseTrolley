//
//  LocationSearchViewModel.swift
//  UberClone
//
//  Created by Thomas Cowern on 11/25/22.
//

import Foundation
import MapKit


class LocationSearchViewModel: NSObject, ObservableObject {
    
    // MARK: properties
    
    @Published var results = [MKLocalSearchCompletion]()
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = ""
    
    override init() {
        searchCompleter.queryFragment = queryFragment
    }
    
}
