//
//  CollectionGameCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/27.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class CollectionGameCell: UICollectionViewCell {

    
    
    
    @IBOutlet weak var iconImageview: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // 定义模型属性
    var group : AnchorGroup? {
        didSet{
            titleLabel.text = group?.tag_name
            if let iconUrl = URL(string: group?.icon_url ?? "") {
                iconImageview.kf.setImage(with: iconUrl)
            } else {
                iconImageview.image = UIImage(named: "home_more_btn")
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
