//
//  BSCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BSCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
