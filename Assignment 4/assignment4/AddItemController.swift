//
//  AddTskController.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit


class AddItemController: UIViewController{
    
    
    //labels
    let toplabel = UILabel()
    let namelabel = UILabel()
    let desclabel = UILabel()
    let pricelabel = UILabel()
    let categorylabel = UILabel()
    let storeNamelabel = UILabel()
    let storeAddresslabel = UILabel()
    let storePhonelabel = UILabel()
    
    //textfields
    let nameTextField = UITextField()
    let descTextField = UITextField()
    let priceTextField = UITextField()
    let categoryTextField = UITextField()
    let storeNameTextField = UITextField()
    let storeAddressTextField = UITextField()
    let storePhoneTextField = UITextField()
    
    //button
    let addItemToList = UIButton(type: .system)
    let close = UIButton(type: .system)
    
    //variables
    var itemName:String = ""
    var itemDesc:String = ""
    var itemPrice:Float = 0.0
    var itemCategory:String = ""
    var storeName:String = ""
    var storeAddress:String = ""
    var storePhone:String = ""
    var price:String = ""
    
    
        
    
    
    let addItemButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha:1.0)
        setAddItemView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setAddItemView()
    {
        

        
        //header label
        view.addSubview(toplabel)
        toplabel.translatesAutoresizingMaskIntoConstraints = false
        toplabel.text = "ADD ITEM TO WISHLIST"
        toplabel.font = toplabel.font.withSize(18)
        toplabel.textColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha:1.0)
        toplabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        toplabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        toplabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //label for item name
        view.addSubview(namelabel)
        namelabel.translatesAutoresizingMaskIntoConstraints = false
        namelabel.text = "Name of Item:"
        namelabel.font = namelabel.font.withSize(11)
        namelabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        namelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        namelabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        namelabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for item name
        view.addSubview(nameTextField)
        nameTextField.placeholder = "Enter name of item"
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.borderStyle = .roundedRect
        nameTextField.topAnchor.constraint(equalTo: namelabel.topAnchor, constant: 20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        //label for description
        view.addSubview(desclabel)
        desclabel.translatesAutoresizingMaskIntoConstraints = false
        desclabel.text = "Description of Item:"
        desclabel.font = desclabel.font.withSize(11)
        desclabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        desclabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        desclabel.topAnchor.constraint(equalTo: nameTextField.topAnchor, constant: 50).isActive = true
        desclabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for description
        view.addSubview(descTextField)
        descTextField.placeholder = "Enter description for item"
        descTextField.translatesAutoresizingMaskIntoConstraints = false
        descTextField.borderStyle = .roundedRect
        descTextField.topAnchor.constraint(equalTo: desclabel.topAnchor, constant: 20).isActive = true
        descTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        descTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        descTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        //label for price
        view.addSubview(pricelabel)
        pricelabel.translatesAutoresizingMaskIntoConstraints = false
        pricelabel.text = "Price of Item:"
        pricelabel.font = pricelabel.font.withSize(11)
        pricelabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        pricelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        pricelabel.topAnchor.constraint(equalTo: descTextField.topAnchor, constant: 50).isActive = true
        pricelabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for price
        view.addSubview(priceTextField)
        priceTextField.placeholder = "Enter price for the item"
        priceTextField.translatesAutoresizingMaskIntoConstraints = false
        priceTextField.borderStyle = .roundedRect
        priceTextField.topAnchor.constraint(equalTo: pricelabel.topAnchor, constant: 20).isActive = true
        priceTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        priceTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        priceTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        
        //label for category
        view.addSubview(categorylabel)
        categorylabel.translatesAutoresizingMaskIntoConstraints = false
        categorylabel.text = "Category of Item:"
        categorylabel.font = categorylabel.font.withSize(11)
        categorylabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        categorylabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        categorylabel.topAnchor.constraint(equalTo: priceTextField.topAnchor, constant: 50).isActive = true
        categorylabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for category
        view.addSubview(categoryTextField)
        categoryTextField.placeholder = "Enter category of item"
        categoryTextField.translatesAutoresizingMaskIntoConstraints = false
        categoryTextField.borderStyle = .roundedRect
        categoryTextField.topAnchor.constraint(equalTo: categorylabel.topAnchor, constant: 20).isActive = true
        categoryTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        categoryTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        categoryTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        
        //label for store name
        view.addSubview(storeNamelabel)
        storeNamelabel.translatesAutoresizingMaskIntoConstraints = false
        storeNamelabel.text = "Name of Store:"
        storeNamelabel.font = categorylabel.font.withSize(11)
        storeNamelabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        storeNamelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeNamelabel.topAnchor.constraint(equalTo: categoryTextField.topAnchor, constant: 50).isActive = true
        storeNamelabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for store name
        view.addSubview(storeNameTextField)
        storeNameTextField.placeholder = "Enter name of the store"
        storeNameTextField.translatesAutoresizingMaskIntoConstraints = false
        storeNameTextField.borderStyle = .roundedRect
        storeNameTextField.topAnchor.constraint(equalTo: storeNamelabel.topAnchor, constant: 20).isActive = true
        storeNameTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storeNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        
        //label for store address
        view.addSubview(storeAddresslabel)
        storeAddresslabel.translatesAutoresizingMaskIntoConstraints = false
        storeAddresslabel.text = "Address of the store:"
        storeAddresslabel.font = categorylabel.font.withSize(11)
        storeAddresslabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        storeAddresslabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeAddresslabel.topAnchor.constraint(equalTo: storeNameTextField.topAnchor, constant: 50).isActive = true
        storeAddresslabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        //textfield for category
        view.addSubview(storeAddressTextField)
        storeAddressTextField.placeholder = "Enter address of store"
        storeAddressTextField.translatesAutoresizingMaskIntoConstraints = false
        storeAddressTextField.borderStyle = .roundedRect
        storeAddressTextField.topAnchor.constraint(equalTo: storeAddresslabel.topAnchor, constant: 20).isActive = true
        storeAddressTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storeAddressTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeAddressTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        
        //label for phone of the store
        view.addSubview(storePhonelabel)
        storePhonelabel.translatesAutoresizingMaskIntoConstraints = false
        storePhonelabel.text = "Phone of the store:"
        storePhonelabel.font = storePhonelabel.font.withSize(11)
        storePhonelabel.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        storePhonelabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storePhonelabel.topAnchor.constraint(equalTo: storeAddressTextField.topAnchor, constant: 50).isActive = true
        storePhonelabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        //textfield for category
        view.addSubview(storePhoneTextField)
        storePhoneTextField.placeholder = "Enter phone of the store"
        storePhoneTextField.translatesAutoresizingMaskIntoConstraints = false
        storePhoneTextField.borderStyle = .roundedRect
        storePhoneTextField.topAnchor.constraint(equalTo: storePhonelabel.topAnchor, constant: 20).isActive = true
        storePhoneTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storePhoneTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storePhoneTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        
        //button for adding item
        view.addSubview(addItemToList)
        addItemToList.setTitle("Add Item", for: .normal)
        addItemToList.translatesAutoresizingMaskIntoConstraints = false
        addItemToList.layer.cornerRadius = 5
        addItemToList.layer.masksToBounds = true
        addItemToList.widthAnchor.constraint(equalTo: storePhoneTextField.widthAnchor, constant: 0).isActive = true
        addItemToList.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addItemToList.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        addItemToList.topAnchor.constraint(equalTo: storePhoneTextField.topAnchor, constant: 50).isActive = true
        addItemToList.backgroundColor = UIColor.black
        addItemToList.setTitleColor(UIColor.white, for: .normal)
        addItemToList.addTarget(self, action: #selector(addItemBtnPressed), for: .touchUpInside)
        
    }
    
    func addItemBtnPressed()
    {
        itemName = nameTextField.text!
        itemDesc = descTextField.text!
        itemCategory = categoryTextField.text!
        price = priceTextField.text!
        storeName = storeNameTextField.text!
        storeAddress = storeAddressTextField.text!
        storePhone = storePhoneTextField.text!
        
        
        if itemName != "" && itemDesc != "" && price != "" && itemCategory != "" && storeName != "" && storeAddress != "" && storePhone != ""
        {
            
            if((Wishlist.wishlist.searchItem(itemName: itemName.lowercased())) != nil)
            {
                let alertController = UIAlertController(title: "Error", message: "Item already exists", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default) {
                    action in
                    //
                
                }
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // ...
                }
                
                
            }
            
            
            if Float(price) == nil
            {
                let alertController = UIAlertController(title: "Error", message: "Please enter a valid price", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                    // ...
                }
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // ...
                }
            } else {
                itemPrice = Float(price)!
            
            let store = Store(storeName:storeName, storeAddress: storeAddress, storePhone:storePhone)
            let item = Item(itemName: itemName, itemDescription: itemDesc, itemPrice:itemPrice, itemCategory: itemCategory, store:store )
            store.storeItems.append(item)
            Wishlist.wishlist.list.append(item)
            
                dismiss(animated: true, completion: nil)       }
           
        }
            
            
        else
        {print("textField are empty")
            let alertController = UIAlertController(title: "Empty fields", message: "Please enter data in all fields", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
                // ...
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { action in
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
            
            
            }

    }
    


}
