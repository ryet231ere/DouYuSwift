//
//  AmuseViewModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/7.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class AmuseViewModel {
    lazy var ancgorGroups : [AnchorGroup] = [AnchorGroup]()
}

extension AmuseViewModel {
    func loadAmuseData(finishedCallback : @escaping () -> ()) {
        NetworkTools.requestData(.get, URLString: "http://capi.douyucdn.cn/api/v1/getHotRoom/2") { (result) in
            // 1.获取数据
            guard let resultDict = result as? [String : Any] else { return }
            guard let dataArray = resultDict["data"] as? [[String : Any]] else { return }
            
            // 2.字典转模型
            for dict in dataArray {
                self.ancgorGroups.append(AnchorGroup(dict: dict))
            }
            
            finishedCallback()
        }
    }
}
