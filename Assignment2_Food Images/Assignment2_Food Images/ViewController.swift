//
//  ViewController.swift
//  Assignment2_Food Images
//
//  Created by 郑泽瑶 on 2/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tblView: UITableView!
    
    let images = ["Food1", "Food2", "Food3", "Food4", "Food5", "Food6", "Food7", "Food8", "Food9", "Food10"]
    
    let imageNames = ["donuts", "hamburgers", "fried chicken", "cookies", "fries", "chips", "pizza", "popcorn", "ice cream", "breads"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = imageNames[indexPath.row]
        return cell
    }


}

