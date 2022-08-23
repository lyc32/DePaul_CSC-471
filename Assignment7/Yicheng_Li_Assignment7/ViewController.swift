//
//  ViewController.swift
//  Yicheng_Li_Assignment7
//
//  Created by mac on 2021/2/22.
//

import UIKit

class ViewController: UITabBarController
{
    
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
    {
        if item.title == "TV"
        {
            viewControllers?[0].viewDidLoad()
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

}
