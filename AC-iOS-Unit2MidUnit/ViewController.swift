//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var pvModel = PoloniusMonologueModel()
    
    @IBOutlet weak var displayLinesLabel: UILabel!
    
    @IBOutlet weak var inputNameField: UITextField!
    
    @IBOutlet weak var displayInputsLines: UIScrollView!
    
    @IBAction func nextLinePressed(_ sender: UIButton) {
        let newNextLine = pvModel.getNextLine()
                    displayLinesLabel.text = newNextLine
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputNameField.delegate? = self
        displayLinesLabel.text = pvModel.getNextLine()

        
        
        
    
    
        
        
        // Do any additional setup after loading the view.
    }
    
}

