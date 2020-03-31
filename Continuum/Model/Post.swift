//
//  File.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class Post {
    
    var photoData: Data?
    let timestamp: Date
    let caption: String
    let comments: [Comment]
    var photo: UIImage? {
        get {
            guard let photoData = photoData else {return nil}
            return UIImage(data: photoData)
        }
        set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
    }
    
    init(photoData: Data?, timestamp: Date = Date(), caption: String, comments: [Comment] = [], photo: UIImage?) {
        self.photoData = photoData
        self.timestamp = timestamp
        self.caption = caption
        self.comments = comments
        self.photo =  photo
    }
    
}//End of Post Class

class Comment {
    
    let text: String
    let timestamp: Date
    weak var post: Post?
    
    init(text: String, timestamp: Date = Date(), post: Post?) {
        self.text = text
        self.timestamp = timestamp
        self.post = post
    }
}

