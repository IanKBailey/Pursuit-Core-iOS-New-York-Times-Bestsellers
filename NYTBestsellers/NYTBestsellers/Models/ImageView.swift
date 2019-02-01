//
//  ImageView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct ImageData: Codable {
    let items: [ImageInfo]
}

struct ImageInfo: Codable {
    let volumeInfo : Volume
}

struct Volume: Codable {
    let title: String
    let description: String?
    let imageLinks : ImageUrl
    let authors: [String]
}

struct ImageUrl: Codable {
   let smallThumbnail: String
    let thumbnail: String
}


