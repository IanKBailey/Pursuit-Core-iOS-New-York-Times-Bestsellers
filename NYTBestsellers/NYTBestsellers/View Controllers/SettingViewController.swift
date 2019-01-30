//
//  SettingViewController.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    
   let SV = SettingView()
    private var genre = [Genre]() {
        didSet {
            DispatchQueue.main.async {
                self.SV.SettingsPickerView.reloadAllComponents()
            }
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        self.view.addSubview(SV)
        SV.SettingsPickerView.dataSource = self
        SV.SettingsPickerView.delegate = self
        getPicker()
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
extension SettingViewController: UIPickerViewDataSource, UIPickerViewDelegate {
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

