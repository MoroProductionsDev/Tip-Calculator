//
//  ViewController.swift
//  Tip Calculator
//
//  Created by RAUL RIVERO RUBIO on 2/13/20.
//  Copyright © 2020 RAUL RIVERO RUBIO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: Any) {
        // dismiss the keyboard pad
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Gets the bill amount
        let bill = Double(billTextField.text!) ?? 0 // ?? 0 means if the value is not valid, change it to 0
        
        // Calculates the tip and total
        let percentages = [0.15, 0.18, 0.2]
        // tipControl is view of UISegmentedControl and will choose the right index
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Updates the tip and total labels
        tipLabel.text = String(format : "$%.2f", tip)
        totalLabel.text = String(format : "$%.2f", total)
    }
}
