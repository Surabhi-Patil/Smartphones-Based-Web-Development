//
//  AddItemViewController.swift
//  Assignment5
//
//  Created by Surabhi Patil on 10/29/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    
    @IBOutlet weak var itemNameTextField: UITextField!
    @IBOutlet weak var itemDescTextField: UITextField!
    @IBOutlet weak var itemPriceTextField: UITextField!
    @IBOutlet weak var itemCategoryTextField: UITextField!
    @IBOutlet weak var storeNameTextField: UITextField!
    @IBOutlet weak var storeAddressTextField: UITextField!
    @IBOutlet weak var storePhoneTextField: UITextField!

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        
        itemNameTextField.text=""
        itemDescTextField.text=""
        itemPriceTextField.text=""
        itemCategoryTextField.text=""
        storeNameTextField.text=""
        storeAddressTextField.text=""
        storePhoneTextField.text=""
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "closeAdd", sender: self)
    }
    
    
    @IBAction func createButtonPressed(_ sender: UIButton) {
        let itemName = itemNameTextField.text!.lowercased()
        let itemDesc = itemDescTextField.text!
        let itemCategory = itemCategoryTextField.text!
        let price = itemPriceTextField.text!
        let storeName = storeNameTextField.text!
        let storeAddress = storeAddressTextField.text!
        let storePhone = storePhoneTextField.text!
        
        if itemName != "" && itemDesc != "" && price != "" && itemCategory != "" && storeName != "" && storeAddress != "" && storePhone != ""
        {
            
            if((Wishlist.wishlist.searchItem(itemName: itemName)) != nil)
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
                let itemPrice = Float(price)!
                
                let store = Store(storeName:storeName, storeAddress: storeAddress, storePhone:storePhone)
                let item = Item(itemName: itemName, itemDescription: itemDesc, itemPrice:itemPrice, itemCategory: itemCategory, store:store )
                store.storeItems.append(item)
                Wishlist.wishlist.list.append(item)
                
                let alertController = UIAlertController(title: "Success", message: "Item Added Successfully", preferredStyle: .alert)
                
                
                let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                }
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // ...
                }
                
                     }
            
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
        
    }    }
    
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


