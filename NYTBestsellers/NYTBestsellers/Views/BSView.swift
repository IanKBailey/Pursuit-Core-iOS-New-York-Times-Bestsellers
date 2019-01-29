//
//  BSView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class BSView: UIView {

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
    
    lazy var pickerView: UIPickerView = {
        let pv = UIPickerView.init(frame: CGRect.init(x: 11, y: 500, width: 390.0, height: 300.0))
        pv.backgroundColor = .red
        return pv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(collectionView)
        addSubview(pickerView)
        collectionView.register(BSCollectionViewCell.self, forCellWithReuseIdentifier: "BSCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension BSView: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BSCell", for: indexPath) as?
            BSCollectionViewCell else { return UICollectionViewCell()}
        return cell
}


}
