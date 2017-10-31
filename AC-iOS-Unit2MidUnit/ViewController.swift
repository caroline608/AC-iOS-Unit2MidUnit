//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    var pvModel = PoloniusMonologueModel()
    var rjModel = RomeoAndJulietModel()
    
    @IBOutlet weak var displayLinesLabel: UILabel!
    
    @IBOutlet weak var inputNameField: UITextField!
    
    @IBOutlet weak var displayActorsLines: UITextView!
    
    
    @IBAction func nextLinePressed(_ sender: UIButton) {
        let newNextLine = pvModel.getNextLine()
        displayLinesLabel.text = newNextLine
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputNameField.delegate = self
        displayLinesLabel.text = pvModel.getNextLine()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let actor = inputNameField.text else {
            return false
        }
        switch rjModel.checkActor(name: actor ) {
        case .valid:
            displayActorsLines.text = rjModel.getLines(of: actor)
        case .invalid:
            displayActorsLines.text.removeAll()
        }
        textField.resignFirstResponder()
        return true
    }
}
 

        


