//
//  AmuseViewController.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/7.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit



class AmuseViewController: BaseAnchorViewController {

    fileprivate lazy var amuseVM : AmuseViewModel = AmuseViewModel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
}

extension AmuseViewController {
    override func loadData() {
        baseVM = amuseVM
        
        amuseVM.loadAmuseData {
            self.collectionView.reloadData()
        }
    }
}








