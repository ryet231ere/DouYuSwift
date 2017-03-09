//
//  AmuseViewController.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/7.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

private let kMenuViewH : CGFloat = 200

class AmuseViewController: BaseAnchorViewController {

    fileprivate lazy var amuseVM : AmuseViewModel = AmuseViewModel()
    fileprivate lazy var menuView : AmuseMenuView = {
        let menuView = AmuseMenuView.amuseMenuView()
        
        menuView.frame = CGRect(x: 0, y: -kMenuViewH, width: kScreenW, height: kMenuViewH)
        return menuView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
}

extension AmuseViewController {
    override func setupUI() {
        super.setupUI()
        
        collectionView.addSubview(menuView)
        
        collectionView.contentInset = UIEdgeInsets(top: kMenuViewH, left: 0, bottom: 0, right: 0)
        
        
    }
}



extension AmuseViewController {
    override func loadData() {
        baseVM = amuseVM
        
        amuseVM.loadAmuseData {
            self.collectionView.reloadData()
            
            var tempGroup = self.amuseVM.anchorGroups
            tempGroup.removeFirst()
            
            self.menuView.groups = tempGroup
        }
    }
}








