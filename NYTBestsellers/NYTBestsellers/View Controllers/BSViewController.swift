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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        getPicker()
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
    
}
