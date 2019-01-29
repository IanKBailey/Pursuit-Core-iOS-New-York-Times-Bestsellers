//
//  BSViewController.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BSViewController: UIViewController {


     let bsView = BSView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        self.view.addSubview(bsView)
    }


}


