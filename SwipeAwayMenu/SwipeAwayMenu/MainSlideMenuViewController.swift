//
//  MainSlideMenuViewController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//


import UIKit
import SlideMenuControllerSwift

class MainSlideMenuViewController: SlideMenuController {
    
    var timerUCBL : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        UIApplication.shared.statusBarStyle = .lightContent
        view.backgroundColor = .black
        SlideMenuOptions.hideStatusBar = false
        SlideMenuOptions.leftBezelWidth = 50
        SlideMenuOptions.simultaneousGestureRecognizers = false
        mainViewController = Storyboard.workManagement.workManagementTabBarNavigationController()
        leftViewController = Storyboard.mainSlide.mainLeftMenuNavigationController()
    }
}
