//
//  ViewController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapSignIn(_ sender: Any) {
        let mainSlideMenuViewController = Storyboard.mainSlide.mainSlideMenuViewController()
        
        let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
        
        keyWindow?.rootViewController = mainSlideMenuViewController
        keyWindow?.endEditing(true) //co cung thay chay ma bo di cung chay
    }
    
}

