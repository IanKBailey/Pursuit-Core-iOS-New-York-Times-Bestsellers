//
//  BSViewController.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BSViewController: UIViewController {
    let test = BSCollectionViewCell()

    
    lazy var collectionView: UICollectionView = {
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 300, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        let cv = UICollectionView.init(frame: CGRect.init(x: 11, y: 100, width: 390.0, height: 400.0) , collectionViewLayout: layout)
        cv.backgroundColor = .blue
        cv.dataSource = self
        layout.scrollDirection = .horizontal
    
        return cv
    }()
    
   
    //height and width with multiplier to top
    //label to bottom of image
    //text view to bottom of label
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
       self.view.addSubview(collectionView)
        
        collectionView.register(BSCollectionViewCell.self, forCellWithReuseIdentifier: "BSCell")
    }


}

extension BSViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BSCell", for: indexPath) as?
            BSCollectionViewCell else { return UICollectionViewCell()}
        return cell
    }
    
    
    
}
