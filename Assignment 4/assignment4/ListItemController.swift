//
//  ListItemController.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit


class ListItemController: UIViewController{
    
    let closeList = UIButton(type: .system)
    let toplabel = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha:1.0)
        setListItemView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setListItemView()
    {
        view.addSubview(toplabel)
        toplabel.translatesAutoresizingMaskIntoConstraints = false
        toplabel.text = "ITEMS IN WISHLIST"
        toplabel.font = toplabel.font.withSize(15)
        toplabel.textColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha:1.0)
        toplabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 120).isActive = true
        toplabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        toplabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        //button for closing list
        view.addSubview(closeList)
        closeList.setTitle("Close", for: .normal)
        closeList.translatesAutoresizingMaskIntoConstraints = false
        closeList.layer.cornerRadius = 5
        closeList.layer.masksToBounds = true
        closeList.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        closeList.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //addItem.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, constant: 0).isActive = true
        closeList.heightAnchor.constraint(equalToConstant: 50).isActive = true
        closeList.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        //addItem.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 100).isActive = true
        closeList.backgroundColor = UIColor.black
        closeList.setTitleColor(UIColor.white, for: .normal)
        closeList.addTarget(self, action: #selector(closeListBtnPressed), for: .touchUpInside)
        
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
            var count = 50
            for item in Wishlist.wishlist.list{
            
                let textView = UITextView(frame: CGRect(x: 30, y: Double(count), width: 250.0, height: 110.0))
                view.addSubview(textView)
                textView.translatesAutoresizingMaskIntoConstraints = false
                let range = NSMakeRange(textView.text.characters.count - 1, 0)
                textView.scrollRangeToVisible(range)
                textView.isEditable = false
                textView.isUserInteractionEnabled = false
                textView.text = "Item name: \(item.itemName) \nItem Description: \(item.itemDescription) \nItem Price: \(item.itemPrice) \nItem Category: \(item.itemCategory) \nStore Name: \(item.itemStore.storeName) \nStore Address: \(item.itemStore.storeAddress) \nStore Phone: \(item.itemStore.storePhone)"
                count = count + 150
            }
            
        }
        
        
    }
    
    func closeListBtnPressed()
    {
        print("Close List")
        dismiss(animated: true, completion: nil)   }
    
}
