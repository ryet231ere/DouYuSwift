//
//  NSDate-Extension.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/15.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import Foundation

extension Date {
    static func getCurrentTime() -> String {
        let nowDate = Date()
        
        let interval = Int(nowDate.timeIntervalSince1970)
        
        return "\(interval)"
    }
}
