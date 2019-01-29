//
//  FavoritesViewController.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {

    
    let favView = FavoritesView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        self.view.addSubview(favView)
        
    }
    

    

}
