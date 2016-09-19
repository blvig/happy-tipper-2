//
//  ViewController.swift
//  happy tipper 2
//
//  Created by Vig, Bonnie on 9/18/16.
//  Copyright © 2016 Vig, Bonnie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var PeoplePayField: UITextField!
    @IBOutlet weak var OkTipField: UITextField!
    @IBOutlet weak var GoodTipField: UITextField!
    @IBOutlet weak var GreatTipField: UITextField!
 
    @IBOutlet weak var TotalField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func CalculateTip(sender: AnyObject) {
        
        let tippercentages = [0.15, 0.18, 0.2]
        
        
        let bill = Double(BillField.text!) ?? 0
        let OKTipField = bill * 0.15
        let GoodTipField = bill * 0.18
        let GreatTipField = bill * 0.2
        let total = bill +
        
        OkTipField.text = String (format: "$%.2f", OkTipField)
        GoodTipField.text = String (format: "$%.2f", GoodTipField)
        GreatTipField.text = String (format: "$%.2f", GreatTipField)
        TotalLabel.text = String (format: "$%.2f", total)
    }
    
    
}

