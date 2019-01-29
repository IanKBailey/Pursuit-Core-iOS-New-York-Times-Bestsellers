//
//  APIClient.swift
//  NYTBestsellers
//
//  Created by Ian Bailey on 1/29/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation


final class APIClient {
    static func pickerData(completionHandler: @escaping ((AppError?, [Genre]?)-> Void)) {
        let url = "https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=l5l1DgBJNv1fcaaAGba6Sn1DSHRH9gAv"
        NetworkHelper.shared.performDataTask(endpointURLString: url) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            }
            if let data = data {
                do {
                    let genreInfo = try JSONDecoder().decode([Genre].self, from: data)
                    completionHandler(nil, genreInfo)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
    
//    static func bookData(completionHandler: @escaping ((AppError?, )))
    
    
    
    
    
    
    
    
}
