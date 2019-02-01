//
//  BSDetailView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailView: UIView {
        
        lazy var imageView: UIImageView = {
            let iV = UIImageView.init(frame: CGRect.init(x: 11, y: 100, width: 390.0, height: 400.0))
            iV.backgroundColor = .red
            
            return iV
        }()
    
        lazy var label: UILabel = {
            let label = UILabel.init()
            return label
        }()
        
        
        
        override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            addSubview(imageView)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


