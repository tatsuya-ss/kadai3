//
//  ViewController.swift
//  kadai3
//
//  Created by 坂本龍哉 on 2020/12/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var switch1: UISwitch!
    @IBOutlet private var switch2: UISwitch!
    @IBOutlet private var calculateButton: UIButton!
    @IBOutlet private var numberLabel1: UILabel!
    @IBOutlet private var numberLabel2: UILabel!
    @IBOutlet private var kekkaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }
    @IBAction func calculateActionButton(_ sender: Any) {
        let number1 = Double(textField1.text!) ?? 0
        let number2 = Double(textField2.text!) ?? 0
        
        let signedNumber1 = number1 * (switch1.isOn ? 1 : -1)
        let signedNumber2 = number2 * (switch2.isOn ? 1 : -1)
        
        numberLabel1.text = String(signedNumber1)
        numberLabel2.text = String(signedNumber2)
        
        kekkaLabel.text = String(signedNumber1 + signedNumber2)
    }
}

