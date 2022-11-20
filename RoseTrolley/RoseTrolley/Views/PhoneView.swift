//
//  PhoneView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct PhoneView: View {
    
    @State private var phone: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    TextField("Phone Number", text: $phone)
                        .textFieldStyle(.roundedBorder)
                    Text("Valid Phone Number")
                }
                .padding(.trailing, 40)
                .padding(.leading, 40)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button("Next") {
                            // Move to next screen
                        }
                        .buttonStyle(RoseButtonStyle())
                    }
                    .padding()
                }
            }
        }
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
