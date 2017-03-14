//
//  RecommendViewController.swift
//  douyu
//
//  Created by 练锦波 on 2017/2/8.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

private let kCycleViewH = kScreenW * 3 / 8
private let kGameViewH : CGFloat = 90

class RecommendViewController: BaseAnchorViewController {

    // MARK: - 懒加载属性
    fileprivate lazy var recommendVM : RecommendViewModel = RecommendViewModel()
    
    fileprivate lazy var cycleView : RecommendCycleView = {
        let cycleView = RecommendCycleView.recommendCycleView()
        cycleView.frame = CGRect(x: 0, y: -(kCycleViewH + kGameViewH), width: kScreenW, height: kCycleViewH)
        return cycleView
    }()
    
    fileprivate lazy var ganemView : RecommendGameView = {
        let gameView = RecommendGameView.recommendGameView()
        gameView.frame = CGRect(x: 0, y: -kGameViewH, width: kScreenW, height: kGameViewH)
        return gameView
    }()
    
}

// MARK:- 请求数据
extension RecommendViewController {
    override func loadData() {
    
        baseVM = recommendVM
        
        // 1.请求推荐数据
        recommendVM.requestData {
            // 1.展示推荐数据
            self.collectionView.reloadData()
            
            var groups = self.recommendVM.anchorGroups
            groups.removeFirst()
            groups.removeFirst()
            
            let moreGroup = AnchorGroup()
            moreGroup.tag_name = "更多"
            groups.append(moreGroup)
            
            self.ganemView.groups = groups
            
            self.loadDataFinisher()
        }
        
        // 2.请求轮播数据
        recommendVM.requestCycleData { 
            self.cycleView.cycleModels = self.recommendVM.cycleModels
        }
    }
} 


// MARK:- 设置UI界面内容
extension RecommendViewController {
    override func setupUI() {
        super.setupUI()
        
        // 1.将uicollectionview添加到控制器的view中
        view.addSubview(collectionView)
        
        // 2.将cycleView添加到collectionView
        collectionView.addSubview(cycleView)
        
        // 3.将gameView添加到collectionView
        collectionView.addSubview(ganemView)
        
        // 4.设置collectionView的内边距
        collectionView.contentInset = UIEdgeInsets(top: kCycleViewH + kGameViewH, left: 0, bottom: 0, right: 0)
        
    }
}

extension RecommendViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            return CGSize(width: kNormalItemW, height: kPrettyItemH)
        }
        return CGSize(width: kNormalItemW, height: kNormalItemH)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 1 {
            let prettyCell = collectionView.dequeueReusableCell(withReuseIdentifier: kPrettyCellID, for: indexPath) as! CollectionPrettyCell
            
            prettyCell.anchor = recommendVM.anchorGroups[indexPath.section].anchors[indexPath.item]
            
            return prettyCell
            
        } else {
            return super.collectionView(collectionView, cellForItemAt: indexPath)
        }
    }
    
    
}


