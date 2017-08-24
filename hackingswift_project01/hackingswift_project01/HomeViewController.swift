//
//  HomeViewController.swift
//  hackingswift_project01
//
//  Created by Thach Nguyen on 8/24/17.
//  Copyright © 2017 Thach Nguyen. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
    
    var images = [#imageLiteral(resourceName: "nssl1"), #imageLiteral(resourceName: "nssl2"), #imageLiteral(resourceName: "nssl3"), #imageLiteral(resourceName: "nssl4"), #imageLiteral(resourceName: "nssl5"), #imageLiteral(resourceName: "nssl6"), #imageLiteral(resourceName: "nssl7")]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initImages()
    }
    
    func initImages() {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "Hinh so \(indexPath.row)"
        return cell
    }
    
}
