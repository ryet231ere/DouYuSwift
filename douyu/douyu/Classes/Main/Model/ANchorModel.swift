//
//  ANchorModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/15.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class ANchorModel: NSObject {
    // 房间id
    var room_id : Int = 0
    
    // 房间图片对应的URLString
    var vertical_src : String = ""
    
    // 判断是手机直播还是电脑直播
    // 0表示电脑直播 1手机直播
    var isVertical : Int = 0
    
    // 房间名称
    var room_name : String = ""
    
    // 主播昵称
    var nickname : String = ""
    
    // 观看人数
    var online : Int = 0
    
    // 所在城市
    var anchor_city : String = ""
    
    init(dict : [String : Any]) {
        super.init()
        
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
