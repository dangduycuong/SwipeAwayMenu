//
//  LeftMenuTableViewCell.swift
//  SwipeAwayMenu
//
//  Created by Dang Duy Cuong on 12/29/20.
//  Copyright © 2020 Dang Duy Cuong. All rights reserved.
//

import UIKit

class LeftMenuTableViewCell: BaseTableViewCell {

    @IBOutlet weak var topicImageView: UIImageView!
    @IBOutlet weak var topicLabel: UILabel!
    var imageName = ""
    var isSelectedCell  = false
    override func awakeFromNib() {
        super.awakeFromNib()
        self.topicLabel.highlightedTextColor = .blue
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.checkHightLight(isSelected: (selected || self.isSelectedCell))
    }
    func getHightLightImage() -> UIImage?
    {
        return nil
//        return UIImage(named: self.imageName)?.getImageWithColor(color: , size: CGSize.init(width: 20, height: 20))
    }
    func checkHightLight(isSelected: Bool)
    {
        if(isSelected)
        {
            topicImageView.image = getHightLightImage()
            topicLabel.textColor = .blue
        }else
        {
            topicImageView.image = UIImage(named: self.imageName)
            topicLabel.textColor = .blue
        }
    }
}

extension LeftMenuTableViewCell {
    
    override class func identifier() -> String {
        return "LeftMenuTableViewCell"
    }
    override func setData(_ data: Any?) {
        self.accessoryType = .none
//        if let menu = data as? Menu {
//            if((menu.childObjects) != nil)
//            {
//                if(menu.childObjects!.count > 0 && menu.objectUrl != .QuanLyCongViec && menu.objectUrl != .GiamSatChuDong)
//                {
//                    self.accessoryType = .disclosureIndicator
//                }
//            }
//            if let image = menu.objectUrl?.image {
//                self.imageName = image
//                self.checkHightLight(isSelected: self.isSelectedCell)
//
//            }
//            if let title = menu.objectName {
//                // cuongdd sửa theo yêu cầu tester phần nims
//                if menu.objectUrl == .QuanLyHaTangNIMS {
//                    self.topicLabel.text = "Quản lý hạ tầng"
//                } else {
//                    self.topicLabel.text = title
//                }
//            }
//
//        }
    }
}
