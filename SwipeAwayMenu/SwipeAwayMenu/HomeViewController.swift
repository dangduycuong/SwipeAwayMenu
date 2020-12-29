//
//  HomeViewController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class HomeViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let bar = UIBarButtonItem(image: #imageLiteral(resourceName: "icons8-menu"), style: .plain, target: self, action: #selector(openMenu))
        navigationItem.leftBarButtonItem = bar
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Home"
    }
    
    @objc func openMenu() {
        print("open menu")
        if let slideMenuController = self.slideMenuController() {
            slideMenuController.openLeft()
        }
    }

}
