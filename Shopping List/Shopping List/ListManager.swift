//
//  ListManager.swift
//  Shopping List
//
//  Manages shopping list, holds array of all list items
//
//  Created by Stefan Dierauf on 7/6/14.
//  Copyright (c) 2014 sdierauf. All rights reserved.
//

import UIKit

var ListMgr: ListManager = ListManager()

struct ListItem {
    var name = ""
}


class ListManager: NSObject {
   
    var shoppingList = ListItem[]()
    
    func addItem(name: String) {
        shoppingList.append(ListItem(name: name))
    }
    
    
}
