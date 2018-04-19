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
    var myMail: String?
    var myPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboard()
        view.backgroundColor = .white
        logoView = LogoView(frame: view.bounds)
        connexionView = ConnexionView(frame: view.bounds)
        connexionView.addController(controller: self)
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

    
    func validateConnexion(mailAdress: String?, password: String?) {
        myMail = mailAdress
        myPassword = password
        if let mail = myMail, mail != "" {
            if let mdp = password, myPassword != "" {
                // verif Firebase
            } else {
                // message popup
                ErrorDisplay().basicError(controller: self, message: "Le mot de passe ne peut pas être vide")
            }
        } else {
            // message popup
            ErrorDisplay().basicError(controller: self, message: "L'adresse mail ne peut pas être vide")
        }
    }
    
    
    func transition(to: UIView, transition: UIViewAnimationOptions) {
        UIView.transition(from: currentView, to: to, duration: 0.7, options: transition) { (success) in
            self.currentView = to
        }
    }
    
    
}
