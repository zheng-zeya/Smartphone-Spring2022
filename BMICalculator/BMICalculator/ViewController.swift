//
//  ViewController.swift
//  BMICalculator
//
//  Created by 郑泽瑶 on 5/2/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var lblYourBMI: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var metricSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtHeight.delegate = self
        txtWeight.delegate = self
    }

    
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn {
            txtHeight.placeholder = "Height (cm)"
            txtWeight.placeholder = "Weight (kg)"
        }
        else {
            txtHeight.placeholder = "Height (in)"
            txtWeight.placeholder = "Weight (lbs)"
        }
        
    }

    
    @IBAction func calculateBMIAction(_ sender: UIButton) {
        
        if txtWeight.text != nil && txtHeight.text != nil{
            guard var weight = Double(txtWeight.text!) else { return  }
            guard var height = Double(txtHeight.text!) else { return  }
            
            //convert units
            if !metricSwitch.isOn {
                (weight) *= 0.453592
                (height) *= 2.54
            }
            let BMI : Double = weight / (height/100 * height/100)
            let shortBMI = String(format: "%.2f", BMI)

            var category : String?
            switch BMI {
            case 0...18.5:
                category = "Underweight"
            case 18.5...24.9:
                category = "Healthy Weight"
            case 25...29.9:
                category = "Overweight"
            default:
                category = "Obese"
            }

            lblYourBMI.text = "Your BMI is : \(shortBMI)"
            lblCategory.text = "You are " + category!
            return
        }
       
        lblYourBMI.text = "Please enter your height and weight."
    }
    
    
}

