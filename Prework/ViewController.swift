//
//  ViewController.swift
//  Prework
//
//  Created by emily_shen on 4/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
        
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
        
    @IBOutlet weak var splitNumOfPeople: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get number of people from text field input
        let numOfPeople = Double(splitNumOfPeople.text!) ?? 1
        
        // get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalPerPerson = total/numOfPeople
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amount label
        totalLabel.text = String(format: "$%.2f", total)
        
        totalPerPersonLabel.text = String(format: "$%.2f", totalPerPerson)
        
    }
    

}

