//
//  CollectionView.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
struct CollectionData: Codable {
    let results: [Books]
}

struct Books: Codable {
    let listName: String
    let weeksOnList: Int
    let bestSellerDate: String
    let bookDetails: [BookDetails]
    private enum CodingKeys: String, CodingKey {
        case weeksOnList = "weeks_on_list"
        case bookDetails = "book_details"
        case listName = "list_name"
        case bestSellerDate = "bestsellers_date"
    }
    
}
struct BookDetails: Codable {
    let title: String
    let description: String
    let contributor: String
    let author: String
    let publisher: String
    let primaryIsbn: String
    private enum CodingKeys: String, CodingKey {
        case title
        case description
        case contributor
        case author
        case publisher
        case primaryIsbn = "primary_isbn13"
    }
}


