//
//  ViewController.swift
//  Tipster
//
//  Created by TiAuna Dodd on 1/11/18.
//  Copyright © 2018 TiAuna Dodd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true) //dismiss keyboard
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.1, 0.15, 0.2]
        
        let bill = Double(billValue.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

