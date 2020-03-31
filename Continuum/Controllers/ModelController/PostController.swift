//
//  PostController.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import Foundation

class PostController {

// Mark: - Shared Instance & Source of Truth
    static let shared = PostController()
    let posts: [Post] = []
    
    func addComment(text: String, post: Post, completion: @escaping (Result<Comment, PostError>) -> Void) {
        
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Result<Post?, PostError>) -> Void) {
        
    }
    
    
    
}//End of class PostController
