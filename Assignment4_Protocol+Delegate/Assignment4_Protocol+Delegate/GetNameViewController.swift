//
//  GetNameViewController.swift
//  Assignment4_Protocol+Delegate
//
//  Created by 郑泽瑶 on 2/21/22.
//

import UIKit

protocol SendNameDelegate {
    func setName(firstName: String, lastName: String)
    func setWelcomeText(welcomeText : String)
}

class GetNameViewController: UIViewController {

    @IBOutlet weak var txtFirst: UITextField!
    
    @IBOutlet weak var txtLast: UITextField!
    
    var firstName : String?
    var lastName : String?
    
    var sendNameDelegate : SendNameDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let firstName = firstName else{return}
        guard let lastName = lastName else {return}
        txtFirst.text = firstName
        txtLast.text = lastName
        // Do any additional setup after loading the view.
    }
    

    @IBAction func save(_ sender: Any) {
        guard let first = txtFirst.text else {return}
        guard let last = txtLast.text else {return}
        sendNameDelegate?.setName(firstName: first, lastName: last)
        sendNameDelegate?.setWelcomeText(welcomeText: "Welcome \(first),\(last)")

        self.navigationController?.popViewController(animated: true)
    }
    

}
