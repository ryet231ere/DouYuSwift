//
//  AnchorGroup.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/15.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class AnchorGroup: BassGameModel {

    // 该组中对应的房间信息
    var room_list : [[String : NSObject]]? {
        didSet {
            guard let room_list = room_list else {
                return
            }
            for dict in room_list {
                anchors.append(ANchorModel(dict: dict))
            }
        }
    }
    
    // 组显示的图标
    var icon_name : String = "home_header_normal"
    
    // 定义主播的模型对象数组
    lazy var anchors : [ANchorModel] = [ANchorModel]()
    
}
