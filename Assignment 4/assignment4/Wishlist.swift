//
//  Wishlist.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import Foundation


class Wishlist
{
    static var wishlist = Wishlist()
    
    var list=[Item]()
    
    private init() {}
    
    func listAllItems()
    {
            for item in Wishlist.wishlist.list
            {
                var i:Int = 1
                print(" \(i)  \(item)")
                i += 1
            }
        
    }
    
    func searchItem(itemName:String) ->Item?
    {
        for item in Wishlist.wishlist.list
        {
            if itemName == item.itemName
            {return item}
            
        }
        return nil;
    }
    
    func deleteItem(itemName:String)
    {
        var p:Int?
        var p1:Int?
        for (index,item) in Wishlist.wishlist.list.enumerated()
        {
            if itemName == item.itemName {
                p = index;
                var itemsStore = [Item]();
                itemsStore = item.itemStore.storeItems
                for (pos,it) in itemsStore.enumerated() {
                    if(it.itemName == itemName) {
                        p1 = pos;
                        break;
                    }
                }
                itemsStore.remove(at: p1!);
                break;
            }
            
        }
        
        Wishlist.wishlist.list.remove(at: p!);
    }
    
    func displayItemDetails(item:Item)
    {
        print("Name: \(item.itemName)")
        print("Description: \(item.itemDescription)")
        print("Price: \(item.itemPrice)")
        print("Category: \(item.itemCategory)")
        print("Store Name: \(item.itemStore.storeName)")
        print("Store Address: \(item.itemStore.storeAddress!)")
        print("Store Phone: \(item.itemStore.storePhone!)")
        
    }
    
}
