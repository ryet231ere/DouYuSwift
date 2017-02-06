//
//  UIColor-Extension.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/6.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r : CGFloat, g : CGFloat, b: CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
}
