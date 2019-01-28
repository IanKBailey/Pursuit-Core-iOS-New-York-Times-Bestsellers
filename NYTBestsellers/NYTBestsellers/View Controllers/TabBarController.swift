//
//  TabBarController.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/27/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let bsTab = BSViewController()
        let favorite = FavoritesViewController()
        bsTab.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        favorite.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        let tabBarList = [bsTab,favorite]
        viewControllers = tabBarList
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
