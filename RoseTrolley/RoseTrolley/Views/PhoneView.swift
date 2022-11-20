//
//  PhoneView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct PhoneView: View {
    
    @State private var phone: String = ""
    @State private var isShowingMessageView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    TextField("Phone Number", text: $phone)
                        .textFieldStyle(.roundedBorder)
                    Text("Valid Phone Number")
                        .foregroundColor(Color("ColorMain"))
                        .font(.headline)
                }
                .padding(.trailing, 40)
                .padding(.leading, 40)
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: MessageVIew(), isActive: $isShowingMessageView) { EmptyView() }
                        Button("Next") {
                            // Move to next screen
                            isShowingMessageView = true
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
