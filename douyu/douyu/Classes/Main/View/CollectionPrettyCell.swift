//
//  CollectionPrettyCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/8.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit
import Kingfisher
class CollectionPrettyCell: CollectionBaseCell {

    
    
    @IBOutlet weak var cityBtn: UIButton!
    override var anchor : ANchorModel? {
        didSet {
            super.anchor = anchor
            
            // 3.显示所在的城市
            cityBtn.setTitle(anchor?.anchor_city, for: .normal)
            
        }
    }

}
