//
//  ViewController.swift
//  Assignment4_Protocol+Delegate
//
//  Created by 郑泽瑶 on 2/21/22.
//

import UIKit

class ViewController: UIViewController, SendNameDelegate {
    

    @IBOutlet weak var lblFirst: UILabel!
    
    @IBOutlet weak var lblLast: UILabel!
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getName(_ sender: Any) {
        performSegue(withIdentifier: "segueSendName", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSendName" {
            let secondVC = segue.destination as! GetNameViewController
            
            guard let first = lblFirst.text else{return}
            guard let last = lblLast.text else{return}
            secondVC.firstName = first
            secondVC.lastName = last
            
            secondVC.sendNameDelegate = self
        }
    }
    
    
    func setName(firstName: String, lastName: String) {
        lblFirst.text = firstName
        lblLast.text = lastName
    }
    
    func setWelcomeText(welcomeText: String) {
        lblWelcome.text = welcomeText
    }
}

