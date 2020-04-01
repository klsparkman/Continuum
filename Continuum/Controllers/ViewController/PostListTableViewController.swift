//
//  PostListTableViewController.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class PostListTableViewController: UITableViewController {

    @IBOutlet var postListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        PostController.shared.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "postListCell", for: indexPath) as? PostTableViewCell else {return UITableViewCell()}
        
        let post = PostController.shared.posts[indexPath.row]
        cell.textLabel?.text = post.caption
        cell.detailTextLabel?.text = "\(post.comments)"
        cell.imageView?.image = post.photo
        return cell
    }
 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let destinationVC = segue.destination as? PostDetailTableViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let post = PostController.shared.posts[indexPath.row]
                    destinationVC.posts = post
                }
            }
        }
    }
    

}// End of class
