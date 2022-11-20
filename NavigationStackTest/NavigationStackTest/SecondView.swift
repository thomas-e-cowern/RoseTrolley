//
//  SecondView.swift
//  NavigationStackTest
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Button {
                //Append to the path the enum value
                path.append(NavigationStackTestApp.ViewOptions.thirdView)
            } label: {
                Text("Go To Third View")
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
