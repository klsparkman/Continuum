//
//  PostController.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class PostController {

// Mark: - Shared Instance & Source of Truth
    static let shared = PostController()
    var posts: [Post] = []
    
    func addComment(text: String, post: Post, completion: @escaping (Result<Comment, PostError>) -> Void) {
        
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Result<Post?, PostError>) -> Void) {
        let newPost = Post(photoData: nil, caption: caption, photo: image)
        posts.append(newPost)
    }
    
    
    
}//End of class PostController
