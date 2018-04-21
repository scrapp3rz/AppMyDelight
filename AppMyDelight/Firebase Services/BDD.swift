//
//  BDD.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseAuth



class BDD {
    
    func getUser(id: String, completion: UserCompletion?) {
        Ref().specificUser(id: id).observe(.value) { (snapshot) in
            if snapshot.exists(), let _ = snapshot.value as? [String: AnyObject] {
                completion?(User(snapshot: snapshot))
            } else {
                completion?(nil)
            }
        }
    }
    
    func usernameExists(username: String, completion: SuccessCompletion?) {
        Ref().rootUser.queryOrdered(byChild: "username").queryEqual(toValue: username).observeSingleEvent(of: .value) { (snapshot) in
            if !snapshot.exists() {
                completion?(true, "")
            } else {
                completion?(false, "nom déjà pris")
            }
        }
    }
    
    func updateUser(dict:  [String: AnyObject], completion: UserCompletion?) {
        guard let id = Auth.auth().currentUser?.uid else { return }
        Ref().specificUser(id: id).updateChildValues(dict) { (error, ref) in
            if error == nil {
                self.getUser(id: id, completion: { (user) -> (Void) in
                    completion?(user)
                })
            }
        }
        
    }
    
    
    
    
}
