//
//  ListItemViewController.swift
//  Assignment5
//
//  Created by Surabhi Patil on 10/29/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class ListItemViewController: UIViewController {
    
    @IBOutlet weak var listTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listAllItems()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "closeList", sender: self)
    }
    
    func listAllItems()
    {
        if (Wishlist.wishlist.list.count == 0)
        {
            let alertController = UIAlertController(title: "Oops", message: "Wishlist empty!", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { action in
                // ...
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
            
            print("list empty")
            dismiss(animated: true, completion: nil)
        }
        else
        {
            listTextView.translatesAutoresizingMaskIntoConstraints = false
            let range = NSMakeRange(listTextView.text.characters.count - 1, 0)
            listTextView.scrollRangeToVisible(range)
            listTextView.isEditable = false
            var fieldText:String=""
            for item in Wishlist.wishlist.list{
                
                
                fieldText.append("Item name: \(item.itemName) \nItem Description: \(item.itemDescription) \nItem Price: \(item.itemPrice) \nItem Category: \(item.itemCategory) \nStore Name: \(item.itemStore.storeName) \nStore Address: \(item.itemStore.storeAddress) \nStore Phone: \(item.itemStore.storePhone)\n\n")
            }
            listTextView.text=fieldText
        }    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
