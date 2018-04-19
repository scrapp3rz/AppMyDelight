//
//  UsernameView.swift
//  AppMyDelight
//
//  Created by vincent portier on 20/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit

class UsernameView: UIView {

    
    @IBOutlet weak var Username_Text_Field: UITextField!
    @IBOutlet weak var Error_Label: UILabel!
    
    
    @IBAction func Valid_Button_Action(_ sender: Any) {
        
    }
    @IBAction func Back_Button(_ sender: Any) {
        connexionController?.transition(to: (connexionController?.connexionView)!, transition: .transitionFlipFromLeft)
    }
    
    var view: UIView!
    var connexionController: ConnexionController?
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        view = runXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        view = runXib()
    }

    func addController(controller: ConnexionController) {
        self.connexionController = controller
    }
    
    
    
}
