//
//  ConnexionView.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit

class ConnexionView: UIView {

    @IBOutlet weak var Mail_Text_Field: UITextField!
    @IBOutlet weak var Password_Text_Field: UITextField!
    @IBOutlet weak var Validate_Button: MydelButton!
    
    
    
    @IBAction func Validate_Button_Action(_ sender: Any) {
    }
    
    
    
    
    var view: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        view = runXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        view = runXib()
    }

}
