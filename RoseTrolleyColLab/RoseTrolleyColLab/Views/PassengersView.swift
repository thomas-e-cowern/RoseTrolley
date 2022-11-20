//
//  PassengersView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct PassengersView: View {
    
    @Binding var path: NavigationPath
    
    @State private var numberOfPeople: String = "1"
    
    var body: some View {
        ZStack {
            VStack {
                Picker("Number of people", selection: $numberOfPeople) {
                    Text("1")
                        .tag("1")
                        .font(.title)
                        .foregroundColor(Color("Primary"))
                    Text("2")
                        .tag("5")
                        .font(.title)
                        .foregroundColor(Color("Primary"))
                    Text("3")
                        .tag("5")
                        .font(.title)
                        .foregroundColor(Color("Primary"))
                    Text("4")
                        .tag("5")
                        .font(.title)
                        .foregroundColor(Color("Primary"))
                    Text("5")
                        .tag("5")
                        .font(.title)
                        .foregroundColor(Color("Primary"))
                }
                .pickerStyle(.wheel)
//                .background(Color("Primary").opacity(0.3))
                .padding()
                
                Text("How Many Passengers?")
                    .foregroundColor(Color("Primary"))
                    .font(.headline)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Next") {
                        // Move to next screen
                        path.append(RoseTrolleyColLabApp.ViewOptions.phoneNumberView)
                    }
                    .buttonStyle(RoseButtonStyle())
                }
                .padding()
            }
        }
    }
}

//struct PassengersView_Previews: PreviewProvider {
//    static var previews: some View {
//        PassengersView()
//    }
//}
