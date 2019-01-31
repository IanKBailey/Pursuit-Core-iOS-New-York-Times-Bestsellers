//
//  APIClient.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

var keyword = "Hardcover+Nonfiction"
final class APIClient {
    static func pickerData(completionHandler: @escaping ((AppError?, [Genre]?)-> Void)) {
        let url = "https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=\(SecretKeys.timesBestKey)"
        NetworkHelper.shared.performDataTask(endpointURLString: url) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            }
            if let data = data {
                do {
                    let genreInfo = try JSONDecoder().decode(PickerData.self, from: data)
                    completionHandler(nil, genreInfo.results)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
    
    static func bookData(completionHandler: @escaping ((AppError?, [Books]?) -> Void )) {
        var endpoint = ""
       
        guard keyword.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) != nil else {
            print("encoding error bad keyword")
            return
        }
        endpoint = "https://api.nytimes.com/svc/books/v3/lists.json?api-key=\(SecretKeys.timesBestKey)&list=\(keyword)"
        NetworkHelper.shared.performDataTask(endpointURLString: endpoint) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            }
            if let data = data {
                do {
                    let bookData = try JSONDecoder().decode(CollectionData.self, from: data)
                    completionHandler(nil, bookData.results)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
}

