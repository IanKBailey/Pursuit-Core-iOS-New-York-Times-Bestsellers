//
//  BSCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BSCollectionViewCell: UICollectionViewCell {
    
    lazy var imageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "book"))
        return image
    }()
    
    lazy var cellTextView: UITextView = {
        let text = UITextView()
        text.backgroundColor = .black
        return text
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        
        self.backgroundColor = .white

        addSubview(imageView)
        imageConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
   

    func imageConstraints() {
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        imageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
        imageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        
        
    }

}
