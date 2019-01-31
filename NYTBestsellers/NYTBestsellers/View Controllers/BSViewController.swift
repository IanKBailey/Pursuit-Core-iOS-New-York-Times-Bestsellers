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
    
   private var genre = [Genre]() {
        didSet {
            DispatchQueue.main.async {
                self.bsView.pickerView.reloadAllComponents()
            }
        }
    }
    
    private var books = [Books]() {
        didSet {
            DispatchQueue.main.async {
                self.bsView.collectionView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        getPicker()
        getBooks(listname: "")
        bsView.collectionView.dataSource = self
        bsView.collectionView.delegate = self
        self.view.addSubview(bsView)
        bsView.pickerView.dataSource = self
        bsView.pickerView.delegate = self
    }
    
    private func getPicker() {
        APIClient.pickerData { (error, genre) in
            if let error = error {
                print(error.errorMessage())
            } else if let data = genre {
                self.genre = data
            }
        }
    }
    
    private func getBooks(listname: String) {
        APIClient.bookData { (error, books) in
            if let error = error {
                print(error.errorMessage())
            } else if let data = books {
                self.books = data
            }
        }
    }
}


extension BSViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genre.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genre[row].listName
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let catName = genre[row].listName
        getBooks(listname: catName)
    }
    
}
extension BSViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BSCell", for: indexPath) as?
            BSCollectionViewCell else { return UICollectionViewCell()}
        let bookData = books[indexPath.row]
        cell.label.text = "\(bookData.weeksOnList) Weeks on Best Seller"
        cell.cellTextView.text = bookData.bookDetails.first?.description
        return cell
    }
}

