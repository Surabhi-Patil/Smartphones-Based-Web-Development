//
//  DeleteItemController.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class DeleteItemController: UIViewController{
    
    let searchItemLabel = UILabel()
    let searchItemTextField = UITextField()
    let deleteItem = UIButton(type: .system)
    let closeButton = UIButton(type: .system)
    let toplabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha:1.0)
        setDeleteItemView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setDeleteItemView()
    {
        
        view.addSubview(toplabel)
        toplabel.translatesAutoresizingMaskIntoConstraints = false
        toplabel.text = "DELETE ITEM FROM WISHLIST"
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
        searchItemTextField.placeholder = "Enter name of item to be deleted"
        searchItemTextField.translatesAutoresizingMaskIntoConstraints = false
        searchItemTextField.borderStyle = .roundedRect
        searchItemTextField.topAnchor.constraint(equalTo: searchItemLabel.topAnchor, constant: 20).isActive = true
        searchItemTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        searchItemTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        searchItemTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        //button for adding item
        view.addSubview(deleteItem)
        deleteItem.setTitle("Delete", for: .normal)
        deleteItem.translatesAutoresizingMaskIntoConstraints = false
        deleteItem.layer.cornerRadius = 5
        deleteItem.layer.masksToBounds = true
        deleteItem.widthAnchor.constraint(equalTo: searchItemTextField.widthAnchor, constant: 0).isActive = true
        deleteItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        deleteItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        deleteItem.topAnchor.constraint(equalTo: searchItemTextField.topAnchor, constant: 100).isActive = true
        deleteItem.backgroundColor = UIColor.black
        deleteItem.setTitleColor(UIColor.white, for: .normal)
        deleteItem.addTarget(self, action: #selector(deleteItemBtnPressed), for: .touchUpInside)
        
        
    }
    
        func deleteItemBtnPressed()
        {
            let itemToDel = searchItemTextField.text
            if itemToDel != ""
            {
                let dItem = Wishlist.wishlist.searchItem(itemName: (searchItemTextField.text!))
                //var count = 50
                
                if dItem == nil
                {
                    let alertController = UIAlertController(title: "Error", message: "No such item found", preferredStyle: .alert)
                    let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                        // ...
                    }
                    alertController.addAction(OKAction)
                    
                    self.present(alertController, animated: true) {
                        // ...
                    }
                }
                else
                    {Wishlist.wishlist.deleteItem(itemName: itemToDel!)
                        dismiss(animated: true, completion: nil)                }
            }
            else
            {
                let alertController = UIAlertController(title: "Empty fields", message: "Please enter name of item to be deleted", preferredStyle: .alert)
                

                let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                    // ...
                }
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // ...
                }
            }
            
            
    
    }
    
    
}
