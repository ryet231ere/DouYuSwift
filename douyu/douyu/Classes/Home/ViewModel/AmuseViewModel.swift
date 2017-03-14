//
//  AmuseViewModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/7.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class AmuseViewModel : BaseViewModel{
    
}

extension AmuseViewModel {
    func loadAmuseData(finishedCallback : @escaping () -> ()) {
        loadAnchorData(isGroupData: true, URLString: "http://capi.douyucdn.cn/api/v1/getHotRoom/2", finishedCallback: finishedCallback)
    }
}
