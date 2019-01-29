//
//  FavoritesCollectionViewCell.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/28/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FavoritesCollectionViewCell: UICollectionViewCell {
    
    
    lazy var imageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "book"))
        return image
    }()
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var cellTextView: UITextView = {
        let text = UITextView()
        text.backgroundColor = .black
        return text
    }()
    
    lazy var settingsButton: UIButton = {
        let button = UIButton()
        
        
        return button
    }()
    
    
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubview(imageView)
        addSubview(label)
        addSubview(cellTextView)
        imageConstraints()
        labelConstraints()
        textViewConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func imageConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        imageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
        imageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    
    
    }
    
    func labelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 11).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 11).isActive = true
    }
    
    func textViewConstraints() {
        cellTextView.translatesAutoresizingMaskIntoConstraints = false
        cellTextView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 11).isActive = true
        cellTextView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        cellTextView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 1).isActive = true
        cellTextView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        
    }
    
    
    
    
}
