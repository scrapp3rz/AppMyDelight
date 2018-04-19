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
    var currentView: UIView!
    var connexionView: ConnexionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        logoView = LogoView(frame: view.bounds)
        connexionView = ConnexionView(frame: view.bounds)
        view.addSubview(logoView)
        currentView = logoView
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let id = Auth.auth().currentUser?.uid {
            
        } else {
            transition(to: connexionView, transition: .transitionFlipFromRight)
        }
    }

    
    func transition(to: UIView, transition: UIViewAnimationOptions) {
        UIView.transition(from: currentView, to: to, duration: 0.5, options: transition) { (success) in
            self.currentView = to
        }
    }
    
    
}
