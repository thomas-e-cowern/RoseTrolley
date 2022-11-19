//
//  Ride.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import Foundation

struct Ride: Codable {
    var id: String?
    var name: String = ""
    var phone: String = ""
    var address: String = ""
    var destinationAddress: String = ""
}
