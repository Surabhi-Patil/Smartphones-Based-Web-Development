//
//  DeleteItemViewController.swift
//  Assignment5
//
//  Created by Surabhi Patil on 10/29/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class DeleteItemViewController: UIViewController {
    
    @IBOutlet weak var deleteItemTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "closeDelete", sender: self)
    }

    
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        
        let itemToDel = deleteItemTextField.text?.lowercased()
        if itemToDel != ""
        {
            let dItem = Wishlist.wishlist.searchItem(itemName: itemToDel!)
            
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
                let alertController = UIAlertController(title: "Success", message: "Item Deleted Successfully", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                    // ...
                }
                alertController.addAction(OKAction)
                
                self.present(alertController, animated: true) {
                    // ...
                }
 
            
            
            }
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


