//
//  PhoneNumberVIew.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct PhoneNumberVIew: View {
    
    @Binding var path: NavigationPath
    
    @State private var phone: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                TextField("Phone Number", text: $phone)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom, 20)
                Text("Valid Phone Number")
                    .foregroundColor(Color("Primary"))
                    .font(.headline)
                    
            }
            .padding(.trailing, 40)
            .padding(.leading, 40)
            
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Next") {
                        // Move to next screen
                        path.append(RoseTrolleyColLabApp.ViewOptions.riderMessageView)
                    }
                    .buttonStyle(RoseButtonStyle())
                }
                .padding()
            }
        }
    }
}

//struct PhoneNumberVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        PhoneNumberVIew()
//    }
//}
