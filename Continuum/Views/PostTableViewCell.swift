//
//  PostTableViewCell.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    // Mark: - Outlets
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postCaptionLabel: UILabel!
    @IBOutlet weak var postCommentLabel: UILabel!
    
    var post: Post? {
        didSet {
            DispatchQueue.main.async {
                self.updateViews()
            }
        }
    }
    
    func updateViews() {
        guard let post = post else {return}
        postImageView.image = post.photo
        postCaptionLabel.text = post.caption
        postCommentLabel.text = "\(post.comments)"
    }
    
    
    
    
}
