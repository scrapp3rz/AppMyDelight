//
//  PostCell.swift
//  AppMyDelight
//
//  Created by vincent portier on 24/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit

let POST_CELL = "PostCell"


class PostCell: UICollectionViewCell {
    
    var filcontroller: FilController?
    var profilecontroller: ProfileController?
    var post: Post!
    
    func setup(fil: FilController?, profile: ProfileController?, post: Post) {
        self.filcontroller = fil
        self.profilecontroller = profile
        self.post = post
        
    
    
    }
    
    
    
}
