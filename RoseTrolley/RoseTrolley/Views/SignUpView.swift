//
//  SignUpView.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import SwiftUI
import AuthenticationServices
import FirebaseCore

struct SignUpView: View {
    
    @State private var path: [Bool] = []
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView() {
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
                    isActive = true

                }
                .buttonStyle(RoseButtonStyle())
                
            }
            .navigationDestination(for: Bool.self, destination: { value in
                PassengersView()
            })
        }
    }
    
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
