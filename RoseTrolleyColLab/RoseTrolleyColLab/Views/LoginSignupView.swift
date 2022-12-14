//
//  LoginSignupView.swift
//  RoseTrolleyColLab
//
//  Created by Thomas Cowern on 11/20/22.
//

import SwiftUI
import AuthenticationServices

struct LoginSignupView: View {
    
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack {
            Image("rose-trolley-logo")
            Spacer()
                .frame(height: 150)
            Button("Sign Up") {
                // Sign Up
            }
            .buttonStyle(RoseButtonStyle())
            SignInWithAppleButton(
              
            // Sign in with Apple
                
            onRequest: { request in
                request.requestedScopes = [.fullName, .email]
            },
            onCompletion: { result in
                switch result {

                case .success (let authenticationResults):
                  print("Authorization successful! :\(authenticationResults)")


                case .failure(let error):
                      print("Authorization failed: " + error.localizedDescription)
                }
            }

          ).frame(width: 200, height: 50, alignment: .center)
            
            Button("Sign in wtih Google") {
                // Sign Up
                path.append(RoseTrolleyColLabApp.ViewOptions.passengersView)
                
            }
            .buttonStyle(RoseButtonStyle())
        }
    }
}

//struct LoginSignUp_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginSignupView()
//    }
//}
