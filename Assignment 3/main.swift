//
//  main.swift
//  assignment3
//
//  Created by Surabhi Patil on 10/15/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import Foundation



let wishList = Wishlist()
var choice:Int
var flag :Bool = false

repeat{
    print ("---MENU---")
    print ("1. Add Item in wishlist")
    print ("2. View Items in wishlist")
    print ("3. Search Item in wishlist")
    print ("4. Delete Item from wishlist")
    print ("5. Exit")
    print("Enter your choice:")
    var ch = readLine()
    
    while Int(ch!) == nil || ch == ""
    {print ("Please enter a valid choice")
        ch = readLine()
    }
    
    choice = Int(ch!)!
    //Int(readLine(strippingNewline:true)!)!\
    switch choice{
        
    case 1:
        repeat{
            print("Enter the name of the item you wish to purchase")
            var itemName = readLine()!
            print("Enter the description of the item")
            var itemDescription = readLine()!
            print("Enter the price of the item")
            var price = readLine()!
            while Float(price) == nil
            {
                print("Please enter a valid price")
                price = readLine()!
            }
            print("Enter the category to which the item belongs")
            var category = readLine()!
            print("Enter the store name from which the item is to be purchased")
            var storeName = readLine()!
            print("Enter the address of the store")
            var storeAdd = readLine()!
            print("Enter the phone number of the store")
            var storePhone = readLine()!
            
            if itemName != "" && itemDescription != "" && price != "" && category != "" && storeName != "" && storeAdd != "" && storePhone != ""
            {flag = true
                var itemPrice = Float(price)!
                let store = Store(storeName:storeName, storeAddress: storeAdd, storePhone:storePhone)
                let item = Item(itemName: itemName, itemDescription: itemDescription, itemPrice:itemPrice, itemCategory: category, store:store )
                store.storeItems.append(item)
                wishList.list.append(item)
                print("Item added successfully")
            }
                
            else
            {print ("All fields are mandatory")}
        }while(flag == false)
        
        
    case 2:
        wishList.listAllItems()
        
    case 3:
        print("Enter the name of item to be searched")
        var searchItem = readLine()
        let sItem = wishList.searchItem(itemName: searchItem!)
        if sItem == nil
        {print("No such item found")}
        else
        {wishList.displayItemDetails(item: sItem!)}
        
    case 4:
        print("Enter the name of item to be deleted")
        var deleteItem = readLine()!
        wishList.deleteItem(itemName:deleteItem)
        
    case 5:
        break;
        
    default:
        print("Please enter a valid choice");
    }
    
}while(choice != 5);

