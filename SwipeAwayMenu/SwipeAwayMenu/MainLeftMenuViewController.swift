//
//  MainLeftMenuViewController.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

class MainLeftMenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(NextToVCCell.nib(), forCellReuseIdentifier: NextToVCCell.identifier())
    }

}

extension MainLeftMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NextToVCCell.identifier(), for: indexPath) as! NextToVCCell
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var controller: UIViewController?
        if indexPath.row == 0 {
            controller = Storyboard.workManagement.detailViewController()
            navigationController?.pushViewController(controller!, animated: true)
        } else {
            logout()
        }
        
        if let slideMenuController = self.slideMenuController(), let controller = controller {
            slideMenuController.changeMainViewController(controller, close: true)
        }
    }
    
    func logout(){
     DispatchQueue.main.async {
        let signInViewController = Storyboard.workManagement.signInViewController()
        UIApplication.shared.keyWindow?.rootViewController = signInViewController}
    }
    
}
