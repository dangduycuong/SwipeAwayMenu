//
//  Storyboard.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

struct Storyboard {
    struct mainSlide {
        static let mainSlide = UIStoryboard(name: "MainSlide", bundle: nil)
        
        static func mainSlideMenuViewController() -> MainSlideMenuViewController {
            return mainSlide.instantiateViewController(withIdentifier: "MainSlideMenuViewController") as! MainSlideMenuViewController
        }
        
        static func mainLeftMenuNavigationController() -> BaseNavigationController {
            return mainSlide.instantiateViewController(withIdentifier: "MainLeftMenuNavigationController") as! BaseNavigationController
        }
    }
    
    struct workManagement {
        static let workManagement = UIStoryboard(name: "Main", bundle: nil)
        
        static func signInViewController() -> SignInViewController {
            return workManagement.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        }
        
        static func detailBaseNavigationController() -> BaseNavigationController {
            return workManagement.instantiateViewController(withIdentifier: "DetailBaseNavigationController") as! BaseNavigationController
        }
        
        static func workManagementTabBarNavigationController() -> BaseNavigationController {
            return workManagement.instantiateViewController(withIdentifier: "WorkManagementTabBarNavigationController") as! BaseNavigationController
        }
        
        static func detailViewController() -> DetailViewController {
            return workManagement.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        }
    }
}
