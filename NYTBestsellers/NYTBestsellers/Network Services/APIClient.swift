//
//  APIClient.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

//https://www.googleapis.com/books/v1/volumes?q=isbn:\(isbn)&key=\(SecretKeys.googlekey)


var isbn = ""
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
    
    static func bookData(searchKeyword: String, completionHandler: @escaping ((AppError?, [Books]?) -> Void )) {
        var endpoint = ""
       
        guard searchKeyword.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) != nil else {
            print("encoding error bad keyword")
            return
        }
        endpoint = "https://api.nytimes.com/svc/books/v3/lists.json?api-key=\(SecretKeys.timesBestKey)&list=\(searchKeyword)"
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
    static func getGoogleData (isbn: String, completionHandler: @escaping ((AppError?, [ImageInfo]?) -> Void )) {
        let url = "https://www.googleapis.com/books/v1/volumes?q=isbn:\(isbn)&key=\(SecretKeys.googlekey)"
        NetworkHelper.shared.performDataTask(endpointURLString: url) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            }
            if let data = data {
                do {
                    let imageData = try JSONDecoder().decode(ImageData.self, from: data)
                    completionHandler(nil, imageData.items)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
    
        
    
    
}

