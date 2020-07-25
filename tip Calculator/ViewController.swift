//
//  ViewController.swift
//  tip Calculator
//
//  Created by Saurabh Agrawal on 7/21/20.
//  Copyright © 2020 Codepath Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentagelabel: UILabel!
    
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    
    //Get the initial bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        
    //Calculate tip and total
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
    //Update the tip and total labels
        tipPercentagelabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
}

