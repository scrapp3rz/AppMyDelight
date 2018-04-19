//
//  UIExtensions.swift
//  AppMyDelight
//
//  Created by vincent portier on 19/04/2018.
//  Copyright © 2018 vincent portier. All rights reserved.
//

import UIKit


extension UIViewController {
    
    func keyboard() {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        
    }


    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }

}



extension UIView {
    
    
    func runXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nameXib = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nameXib, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = bounds
        addSubview(view)
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundColor = .white
        return view
        
    }
    
    
    
}
