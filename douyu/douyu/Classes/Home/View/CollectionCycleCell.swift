//
//  CollectionCycleCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/16.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class CollectionCycleCell: UICollectionViewCell {
    @IBOutlet weak var iconImageView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    var cycleModel : CycleModel? {
        didSet {
            titleLabel.text = cycleModel?.title
            
            let iconURL = URL(string: cycleModel?.pic_url ?? "")!
            iconImageView.kf.setImage(with: iconURL)
        }
    }

}
