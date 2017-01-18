//
//  MainViewController.swift
//  douyu
//
//  Created by 练锦波 on 2017/1/18.
//  Copyright © 2017年 练锦波. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC("Home")
        addChildVC("Follow")
        addChildVC("Live")
        addChildVC("Profile")
        
    }
    
    private func addChildVC(_ storyboardName:String){
        //1.通过storyboard获取控制器
        let childVC = UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()!
        
        //2.将控制器作为子控制器
        addChildViewController(childVC)
    }
    

}
