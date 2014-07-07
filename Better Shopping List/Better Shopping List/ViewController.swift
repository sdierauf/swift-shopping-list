//
//  ViewController.swift
//  Better Shopping List
//
//  Created by Stefan Dierauf on 7/6/14.
//  Copyright (c) 2014 sdierauf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {
                            
    @IBOutlet var addItemTextField: UITextField
    @IBOutlet var shoppingListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.shoppingListTable.userInteractionEnabled = true;
        println("enabling user interaction")
        self.view.userInteractionEnabled = true;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.items.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default,
            reuseIdentifier: "test")
        
        cell.text = shoppingList.items[indexPath.row].name;
        
        return cell;
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        println("return pressed")
        shoppingList.addItem(addItemTextField.text)
        //self.view.endEditing(true)
        addItemTextField.text = ""
        shoppingListTable.reloadData()
        return true
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        println("royally fuck you")
        addItemTextField.resignFirstResponder()
        self.view.endEditing(true)
    }


}

