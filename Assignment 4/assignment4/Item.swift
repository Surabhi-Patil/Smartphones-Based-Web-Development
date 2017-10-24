//
//  Item.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import Foundation


class Item: CustomStringConvertible{
    
    
    var itemDescription: String
    var itemName: String
    var itemPrice : Float
    var itemCategory: String
    var itemStore: Store
    public var description: String { return "\(itemName)"}
    
    init(itemName : String, itemDescription : String, itemPrice : Float, itemCategory : String, store: Store)
    {
        self.itemName = itemName
        self.itemDescription = itemDescription
        self.itemPrice = itemPrice
        self.itemCategory = itemCategory
        self.itemStore = store
    }
    
}
