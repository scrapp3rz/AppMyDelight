//
//  PostView.swift
//  AppMyDelight
//
//  Created by vincent portier on 24/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit

class PostView: UIView {

    @IBOutlet weak var Profile_Image: roundedImage!
    @IBOutlet weak var Username_Label: UILabel!
    @IBOutlet weak var Post_Image: UIImageView!
    @IBOutlet weak var Number_Of_Likes: UILabel!
    @IBOutlet weak var Button_Like: UIButton!
    @IBOutlet weak var Number_Of_Comments: UILabel!
    @IBOutlet weak var Button_Comments: UIButton!
    @IBOutlet weak var TextView: UITextView!
    
    
    
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        view = runXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        view = runXib()
    }
    
    @IBAction func Button_Like_Action(_ sender: Any) {
    }
    
    @IBAction func Button_Comments_Action(_ sender: Any) {
    }
    
    
    
}
