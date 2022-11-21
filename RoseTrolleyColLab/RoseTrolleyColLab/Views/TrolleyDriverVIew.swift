//
//  TrolleyDriverVIew.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct TrolleyDriverVIew: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Your Driver:")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
                Text("Tonia")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
            }
            ZStack {
                Circle()
                    .frame(width: 175)
                Image("rose")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
            }
            Spacer()
            VStack {
                Text("Thanks")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
                Text("We're on the way!")
                    .font(.title)
                    .foregroundColor(Color("Primary"))
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

//struct TrolleyDriverVIew_Previews: PreviewProvider {
//    static var previews: some View {
//        TrolleyDriverVIew()
//    }
//}
