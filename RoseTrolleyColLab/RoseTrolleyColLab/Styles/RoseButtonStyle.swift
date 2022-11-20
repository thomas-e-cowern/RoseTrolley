//
//  RoseButtonStyle.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI

struct RoseButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(12)
            .frame(width: 200)
            .background(Color("Primary"))
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
