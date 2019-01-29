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
        view.backgroundColor = .magenta
        let bsTab = BSViewController()
        let favorite = FavoritesViewController()
        let settings = SettingViewController()
        bsTab.title = "Best Sellers"
        favorite.title = "Favorites"
        settings.title = "Settings"
        bsTab.tabBarController?.tabBar.items?[0].image = UIImage(named: "BestSeller")
        favorite.tabBarController?.tabBar.items?[1].image = UIImage(named: "Bookmark")
        settings.tabBarController?.tabBar.items?[2].image = UIImage(named: "Settings")
        let tabBarList = [bsTab,favorite,settings]
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
