//
//  PassengersView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct PassengersView: View {
    
    @State private var numberOfPeople: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Number of people", selection: $numberOfPeople) {
                    ForEach(1..<6) {
                        Text("\($0) people")
                            .font(.headline)
                    }
                }
                .pickerStyle(.navigationLink)
            }
        }
    }
}

struct PassengersView_Previews: PreviewProvider {
    static var previews: some View {
        PassengersView()
    }
}
