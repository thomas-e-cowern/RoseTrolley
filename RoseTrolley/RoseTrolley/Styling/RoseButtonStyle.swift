//
//  RoseButtonStyle.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct RoseButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(12)
            .frame(width: 200)
            .background(Color("ColorMain"))
            .foregroundColor(.white)
            .cornerRadius(8)
            
    }
}
