//
//  SearchItemViewController.swift
//  Assignment5
//
//  Created by Surabhi Patil on 10/29/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class SearchItemViewController: UIViewController {
    
    @IBOutlet weak var searchItemTextField: UITextField!
    
    @IBOutlet weak var searchItemTextView: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "closeSearch", sender: self)
    }
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        let itemName = searchItemTextField.text?.lowercased()
        
        let item = Wishlist.wishlist.searchItem(itemName: itemName!)
        
        if item == nil
        {
            let alertController = UIAlertController(title: "Oops", message: "Item not found!", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                // ...
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
        }
        
        else
        {
            searchItemTextView.text = "Item name: \(item!.itemName) \nItem Description: \(item!.itemDescription) \nItem Price: \(item!.itemPrice) \nItem Category: \(item!.itemCategory) \nStore Name: \(item!.itemStore.storeName) \nStore Address: \(item!.itemStore.storeAddress) \nStore Phone: \(item!.itemStore.storePhone)"
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

}
