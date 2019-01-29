//
//  PickerView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct PickerData: Codable {
    let results: [Genre]
}

struct Genre: Codable {
    let listName: String
    private enum CodingKeys: String, CodingKey {
        case listName = "list_name"
    }
}
