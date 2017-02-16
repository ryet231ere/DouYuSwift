//
//  CollectionBaseCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/16.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class CollectionBaseCell: UICollectionViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var onlineBtn: UIButton!
    
    @IBOutlet weak var nickNameLabel: UILabel!
    
    var anchor : ANchorModel? {
        didSet{
            // 0.校验模型是否有值
            guard let anchor = anchor else {
                return
            }
            
            // 1.取出在线人数显示的文字
            var onlineStr : String = ""
            if anchor.online >= 10000 {
                onlineStr = "\(anchor.online / 10000)万在线"
            }else {
                onlineStr = "\(anchor.online)在线"
            }
            onlineBtn.setTitle(onlineStr, for: .normal)
            
            // 2.昵称的显示
            nickNameLabel.text = anchor.nickname
            
            // 3.设置封面图片
            guard let iconURL = URL(string: anchor.vertical_src) else { return }
            iconImageView.kf.setImage(with: iconURL)
        }
    }
}
