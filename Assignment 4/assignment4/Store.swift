//
//  Store.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import Foundation


class Store
{
    var storeName:String
    var storeAddress:String?
    var storePhone:String?
    var storeItems = [Item]()
    
    init(storeName:String, storeAddress:String, storePhone: String)
    {
        self.storeName = storeName
        self.storeAddress = storeAddress
        self.storePhone = storePhone
    }
    
    
    func returnItems()
    {
        for item in storeItems
        {print (item)}
    }
    
}
