//
//  BDD.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import Foundation
import FirebaseDatabase



class BDD {
    
    func checkIfUserExist(id: String, completion: UserCompletion?) {
        Ref().specificUser(id: id).observe(.value) { (snapshot) in
            if snapshot.exists(), let _ = snapshot.value as? [String: AnyObject] {
                completion?(User(snapshot: snapshot))
            } else {
                completion?(nil)
            }
        }
    }
    
    
    
}
