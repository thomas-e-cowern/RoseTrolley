//
//  addRequestViewModel.swift
//  RoseTrolley
//
//  Created by Thomas Cowern on 11/19/22.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class addRequestViewModel: ObservableObject {
    
    var name: String = ""
    var phone: String = ""
    var address: String = ""
    var destinationAddress: String = ""
    
    var db = Firestore.firestore()
    
    func addRequest(completion: @escaping() -> Void) {
        let ride = Ride(name: name, phone: phone, address: address, destinationAddress: destinationAddress)
        
        do {
            let _ = try db.collection("rides")
                .addDocument(from: ride, encoder: Firestore.Encoder()) { error in
                    if let error = error {
                          print(error.localizedDescription)
                      } else {
                          completion()
                      }
                }
        
        } catch let error {
            print("Error in addRequest: \(error.localizedDescription)")
        }
        
    }
    
}
