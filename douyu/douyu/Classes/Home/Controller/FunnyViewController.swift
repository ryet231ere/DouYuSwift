//
//  FunnyViewController.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/14.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

private let kTopMargin : CGFloat = 10

class FunnyViewController: BaseAnchorViewController {
    
    fileprivate lazy var funnyVM : FunnyViewModel = FunnyViewModel()
    
}

extension FunnyViewController {
    override func setupUI() {
        super.setupUI()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.headerReferenceSize = CGSize.zero
        
        collectionView.contentInset = UIEdgeInsets(top: kTopMargin, left: 0, bottom: 0, right: 0)
    }
}

extension FunnyViewController {
    override func loadData() {
        baseVM = funnyVM
        
        funnyVM.loadFunnyData { 
            self.collectionView.reloadData()
            
            self.loadDataFinisher()
        }
    }
}



