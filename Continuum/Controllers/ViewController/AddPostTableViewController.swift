//
//  AddPostTableViewController.swift
//  Continuum
//
//  Created by Kelsey Sparkman on 3/31/20.
//  Copyright © 2020 Kelsey Sparkman. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {
    
    var selectedImage: UIImage?
    
    @IBOutlet weak var selectImageButton: UIButton!
    
    @IBOutlet weak var captionTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    // Mark: - Actions
    @IBAction func selectImageButtonTapped(_ sender: Any) {
    }
    
    @IBAction func addPostButtonTapped(_ sender: Any) {
        
        guard let photo = selectedImage,
            let caption =  captionTextField.text else { return }
        PostController.shared.createPostWith(image: photo, caption: caption) { (post) in
            self.tabBarController?.selectedIndex = 0
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.tabBarController?.selectedIndex = 0
    }
    
    
    
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

   
   

   

}
