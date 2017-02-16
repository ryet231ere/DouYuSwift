//
//  CollectionNormalCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/8.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class CollectionNormalCell: CollectionBaseCell {

    
    
    @IBOutlet weak var roomNameLabel: UILabel!
    override var anchor : ANchorModel? {
        didSet {
            // 1.将属性传递给父类
            super.anchor = anchor
            
            
            roomNameLabel.text = anchor?.room_name
        }
    }
}
