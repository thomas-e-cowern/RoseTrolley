//
//  RequestRideView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct RequestRideView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject private var addRequestVM = addRequestViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text("Name:")
                TextField("Name", text: $addRequestVM.name)
            }
            HStack {
                Text("Address")
                TextField("Address", text: $addRequestVM.address)
            }
            HStack {
                Text("Phone")
                TextField("Phone", text: $addRequestVM.phone)
            }
            HStack {
                Text("Destination Address")
                TextField("Destination Address", text: $addRequestVM.destinationAddress)
            }
            
            Button("Reserve Ride") {
                addRequestVM.addRequest {
                    MapView()
                }
            }
            .padding(.top, 10)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
