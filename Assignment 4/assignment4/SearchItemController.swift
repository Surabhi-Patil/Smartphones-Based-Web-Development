//
//  SearchItemController.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit


class SearchItemController: UIViewController{
    
    let searchItemLabel = UILabel()
    let searchItemTextField = UITextField()
    let searchItem = UIButton(type: .system)
    let closeSearch = UIButton(type: .system)
    let toplabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha:1.0)
        setSearchItemView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
    }
    
    func setSearchItemView()
    {
        view.addSubview(toplabel)
        toplabel.translatesAutoresizingMaskIntoConstraints = false
        toplabel.text = "SEARCH ITEMS IN WISHLIST"
        toplabel.font = toplabel.font.withSize(18)
        toplabel.textColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha:1.0)
        toplabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        toplabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        toplabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        //label for item name
        view.addSubview(searchItemLabel)
        searchItemLabel.translatesAutoresizingMaskIntoConstraints = false
        searchItemLabel.text = "Name of Item:"
        searchItemLabel.font = searchItemLabel.font.withSize(11)
        searchItemLabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        searchItemLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        searchItemLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        searchItemLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for item name
        view.addSubview(searchItemTextField)
        searchItemTextField.placeholder = "Enter name of item"
        searchItemTextField.translatesAutoresizingMaskIntoConstraints = false
        searchItemTextField.borderStyle = .roundedRect
        searchItemTextField.topAnchor.constraint(equalTo: searchItemLabel.topAnchor, constant: 20).isActive = true
        searchItemTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        searchItemTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        searchItemTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        //button for searching item
        view.addSubview(searchItem)
        searchItem.setTitle("Search Item", for: .normal)
        searchItem.translatesAutoresizingMaskIntoConstraints = false
        searchItem.layer.cornerRadius = 5
        searchItem.layer.masksToBounds = true
        searchItem.widthAnchor.constraint(equalTo: searchItemTextField.widthAnchor, constant: 0).isActive = true
        searchItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        searchItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        searchItem.topAnchor.constraint(equalTo: searchItemTextField.topAnchor, constant: 100).isActive = true
        searchItem.backgroundColor = UIColor.black
        searchItem.setTitleColor(UIColor.white, for: .normal)
        searchItem.addTarget(self, action: #selector(searchItemBtnPressed), for: .touchUpInside)
        
        //button for closing search
        view.addSubview(closeSearch)
        closeSearch.setTitle("Close", for: .normal)
        closeSearch.translatesAutoresizingMaskIntoConstraints = false
        closeSearch.layer.cornerRadius = 5
        closeSearch.layer.masksToBounds = true
        closeSearch.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        closeSearch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        closeSearch.heightAnchor.constraint(equalToConstant: 50).isActive = true
        closeSearch.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        closeSearch.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        closeSearch.setTitleColor(UIColor.white, for: .normal)
        closeSearch.addTarget(self, action: #selector(closeSearchBtnPressed), for: .touchUpInside)
    }
    
    func searchItemBtnPressed()
    {
        
        let item = Wishlist.wishlist.searchItem(itemName: (searchItemTextField.text!))
        //var count = 50
        
        if item == nil
        {
            let alertController = UIAlertController(title: "Error", message: "No such item found", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                // ...
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
            searchItemTextField.text = ""
        }
        
        else
        {
            let count = 800
            let textView = UITextView(frame: CGRect(x: 30, y: Double(count), width: 250.0, height: 110.0))
            view.addSubview(textView)
            textView.translatesAutoresizingMaskIntoConstraints = false
            let range = NSMakeRange(textView.text.characters.count - 1, 0)
            textView.scrollRangeToVisible(range)
            textView.isEditable = false
            textView.isUserInteractionEnabled = false
            textView.text = "Item name: \(item?.itemName) \nItem Description: \(item?.itemDescription) \nItem Price: \(item?.itemPrice) \nItem Category: \(item?.itemCategory) \nStore Name: \(item?.itemStore.storeName) \nStore Address: \(item?.itemStore.storeAddress) \nStore Phone: \(item?.itemStore.storePhone)"
        }
    }
    
        func closeSearchBtnPressed()
        {
        print("Close List")
        dismiss(animated: true, completion: nil)   }
}
