//
//  FinishPostController.swift
//  AppMyDelight
//
//  Created by vincent portier on 24/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit

class FinishPostController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var Profile_Image: roundedImage!
    @IBOutlet weak var Posted_Image: UIImageView!
    @IBOutlet weak var TextView: UITextView!
    
    var image: UIImage!
    var canAdd = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Posted_Image.image = image

    }

 
}
