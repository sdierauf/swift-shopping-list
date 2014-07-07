//
//  SecondViewController.swift
//  Shopping List
//
//  Created by Stefan Dierauf on 7/6/14.
//  Copyright (c) 2014 sdierauf. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool { // called when 'return' key pressed. return NO to ignore.
        textField.resignFirstResponder()
        return true
    }
}

