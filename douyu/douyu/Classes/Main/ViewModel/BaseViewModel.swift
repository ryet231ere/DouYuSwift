//
//  BaseViewModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/9.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class BaseViewModel {
    lazy var anchorGroups : [AnchorGroup] = [AnchorGroup]()
}

extension BaseViewModel {
    func loadAnchorData(isGroupData : Bool, URLString : String, parameters : [String : Any]? = nil, finishedCallback : @escaping () -> ()) {
        NetworkTools.requestData(.get, URLString: URLString, parameters: parameters) { (result) in
            // 1.获取数据
            guard let resultDict = result as? [String : Any] else { return }
            guard let dataArray = resultDict["data"] as? [[String : Any]] else { return }
            
            if isGroupData {
                // 2.字典转模型
                for dict in dataArray {
                    self.anchorGroups.append(AnchorGroup(dict: dict))
                }
            } else {
                let group = AnchorGroup()
                
                for dict in dataArray {
                    group.anchors.append(ANchorModel(dict: dict))
                }
                
                self.anchorGroups.append(group)
            }
            
            
            
            finishedCallback()
        }
    }
}
