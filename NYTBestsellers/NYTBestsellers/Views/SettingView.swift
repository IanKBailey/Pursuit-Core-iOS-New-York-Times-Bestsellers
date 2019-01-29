//
//  SettingView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SettingView: UIView {

    lazy var SettingsPickerView: UIPickerView = {
        let spv = UIPickerView.init(frame: CGRect.init(x: 11, y: 250, width: 390.0, height: 300.0))
        spv.backgroundColor = .red
        return spv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(SettingsPickerView)
}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}
}
