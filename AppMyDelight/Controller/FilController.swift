//
//  FilController.swift
//  AppMyDelight
//
//  Created by vincent portier on 21/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit


class FilController: UICollectionViewController {

    var posts = [Post]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(PostCell.self, forCellWithReuseIdentifier: POST_CELL)
        

    }

    func getAllThePosts() {
        var usersToParse = ME.following
        usersToParse.append(ME.id)
        for user in usersToParse {
            BDD().getPost(user: user) { (post) -> (Void) in
                if post != nil {
                    print("Post bien ajouté")
                    self.posts.append(post!)
                    self.collectionView?.reloadData()
                }
            }
        }
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: POST_CELL, for: indexPath) as! PostCell
    
    
        return cell
    }

    

}
