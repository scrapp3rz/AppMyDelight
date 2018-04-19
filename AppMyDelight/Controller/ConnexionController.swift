//
//  ConnexionController.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit
import  FirebaseAuth

class ConnexionController: UIViewController {

    var logoView: LogoView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        logoView = LogoView(frame: view.bounds)
        view.addSubview(logoView)
        

    }



}
