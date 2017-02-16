//
//  CycleModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/16.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class CycleModel: NSObject {

    // 标题
    var title : String = ""
    
    // 展示的图片地址
    var pic_url : String = ""
    
    // 主播信息对应的字典
    var room : [String : NSObject]? {
        didSet {
            guard let room = room else { return }
            anchor = ANchorModel(dict: room)
        }
    }
    // 主播信息对应的模型对象
    var anchor : ANchorModel?
    
    init(dict : [String : NSObject]) {
        super.init()
        
        setValuesForKeys(dict)
        
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
    
}
