//
//  ViewController.swift
//  Assignment3 -- XibFile
//
//  Created by 郑泽瑶 on 2/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tblView: UITableView!
    
    let images = ["Food1", "Food2", "Food3","Food4","Food5","Food6","Food7","Food8","Food9","Food10"]
    let imagesLabel = ["donuts","hamburger","fired chicken","cookies","fries","chips","pizza","popcorn","ice cream","breads"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblImage.text = imagesLabel[indexPath.row]
        return cell
    }
    


}

