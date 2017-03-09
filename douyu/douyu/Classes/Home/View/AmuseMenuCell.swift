//
//  AmuseMenuCell.swift
//  douyu
//
//  Created by 练锦波 on 2017/3/9.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

private let kGameCellID = "kGameCellID"

class AmuseMenuCell: UICollectionViewCell {

    var groups : [AnchorGroup]? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "CollectionGameCell", bundle: nil), forCellWithReuseIdentifier: kGameCellID)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let ltemW = collectionView.bounds.width / 4
        let ltemH = collectionView.bounds.height / 2
        layout.itemSize = CGSize(width: ltemW, height: ltemH)
    }

}

extension AmuseMenuCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groups?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kGameCellID, for: indexPath) as! CollectionGameCell
        
        cell.baseModel = groups![indexPath.item]
        cell.clipsToBounds = true
        return cell
    }
}


