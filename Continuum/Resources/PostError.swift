//
//  PostError.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import Foundation

enum PostError: LocalizedError {
    case invalidURL
    case noData
    case thrown(Error)
    case failedToDelete
    case ckError(Error)
    case couldNotUnwrap
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "URL is invalid."
        case .noData:
            return "The server responded with no data."
        case .thrown(let error):
            return error.localizedDescription
        case .failedToDelete:
            return "Unable to delete post."
        case .ckError(let error):
            return error.localizedDescription
        case .couldNotUnwrap:
            return "Unable to get this post."
        }
    }
}
