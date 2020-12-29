//
//  BaseNavigationController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//


import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isTranslucent = false
        navigationBar.barTintColor = .brown
        let font = UIFont(name: "Roboto-Bold", size: 17)
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, NSAttributedString.Key.font: font ?? UIFont.systemFont(ofSize: 17)]
        
        navigationBar.tintColor = .white
//        BroadCastNewInfoModel.sharedInstance.isAdded = false
    }
}
