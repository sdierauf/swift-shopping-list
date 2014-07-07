//
//  ShoppingList.swift
//  Better Shopping List
//
//  Created by Stefan Dierauf on 7/6/14.
//  Copyright (c) 2014 sdierauf. All rights reserved.
//

import UIKit

var shoppingList: ShoppingList = ShoppingList()

struct item  {
    var name: String = ""
    var completed = false
}

class ShoppingList: NSObject {
    
    var items = item[]()
    
    func addItem(name:String) {
        items.append(item(name: name, completed: false))
        println("added: " + name);
    }
    
}
