//
//  FunnyViewModel.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/14.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class FunnyViewModel : BaseViewModel{

}

extension FunnyViewModel {
    func loadFunnyData(finishedFunnyCallback : @escaping () -> ()) {
        loadAnchorData(isGroupData: false, URLString: "http://capi.douyucdn.cn/api/v1/getColumnRoom/3", parameters: ["limit" : 30, "offset" : 0], finishedCallback: finishedFunnyCallback)
    }
}

