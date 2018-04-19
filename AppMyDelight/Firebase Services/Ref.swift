//
//  Ref.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import Foundation
import  FirebaseDatabase
import FirebaseStorage

class Ref {
    
    let bdd = Database.database().reference()
    let stockage = Storage.storage().reference()
    
    var rootUser: DatabaseReference { return bdd.child("user")}
    func specificUser(id: String) -> DatabaseReference {
        return rootUser.child(id)
    }
    
    
    
}
