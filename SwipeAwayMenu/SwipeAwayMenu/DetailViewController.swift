//
//  DetailViewController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = false
    }

    @IBAction func tapShowMenu(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
