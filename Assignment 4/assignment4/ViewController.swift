//
//  ViewController.swift
//  assignment4
//
//  Created by Surabhi Patil on 10/22/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//


import UIKit




class ViewController: UIViewController {
    

    let addItem = UIButton(type: .system)
    let listItem = UIButton(type: .system)
    let searchItem = UIButton(type: .system)
    let deleteItem = UIButton(type: .system)
    let wishlistimg = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 255/255, green: 236/255, blue: 179/255, alpha:1.0)
        setHomePageView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setHomePageView(){
        
        
        
        
        //customize add button
        view.addSubview(addItem)
        addItem.setTitle("Add Item", for: .normal)
        addItem.translatesAutoresizingMaskIntoConstraints = false
        addItem.layer.cornerRadius = 5
        addItem.layer.masksToBounds = true
        addItem.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400).isActive = true
        addItem.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //addItem.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, constant: 0).isActive = true
        addItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        //addItem.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 100).isActive = true
        addItem.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        addItem.setTitleColor(UIColor.white, for: .normal)
        addItem.addTarget(self, action: #selector(addItemPressed), for: .touchUpInside)
        
        view.addSubview(listItem)
        listItem.setTitle("List Item", for: .normal)
        listItem.translatesAutoresizingMaskIntoConstraints = false
        listItem.layer.cornerRadius = 5
        listItem.layer.masksToBounds = true
        listItem.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        listItem.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //addItem.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, constant: 0).isActive = true
        listItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        listItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        //addItem.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 100).isActive = true
        listItem.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        listItem.setTitleColor(UIColor.white, for: .normal)
        listItem.addTarget(self, action: #selector(listItemPressed), for: .touchUpInside)
        
        view.addSubview(searchItem)
        searchItem.setTitle("Search Item", for: .normal)
        searchItem.translatesAutoresizingMaskIntoConstraints = false
        searchItem.layer.cornerRadius = 5
        searchItem.layer.masksToBounds = true
        searchItem.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        searchItem.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //addItem.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, constant: 0).isActive = true
        searchItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        searchItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        //addItem.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 100).isActive = true
        searchItem.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        searchItem.setTitleColor(UIColor.white, for: .normal)
        searchItem.addTarget(self, action: #selector(searchItemPressed), for: .touchUpInside)
        
        view.addSubview(deleteItem)
        deleteItem.setTitle("Delete Item", for: .normal)
        deleteItem.translatesAutoresizingMaskIntoConstraints = false
        deleteItem.layer.cornerRadius = 5
        deleteItem.layer.masksToBounds = true
        deleteItem.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        deleteItem.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        //addItem.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, constant: 0).isActive = true
        deleteItem.heightAnchor.constraint(equalToConstant: 50).isActive = true
        deleteItem.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        //addItem.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 100).isActive = true
        deleteItem.backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        deleteItem.setTitleColor(UIColor.white, for: .normal)
        deleteItem.addTarget(self, action: #selector(deleteItemPressed), for: .touchUpInside)
        
        
        //set up profile picture image
        view.addSubview(wishlistimg)
        wishlistimg.image = UIImage(named: "wishlist")
        wishlistimg.translatesAutoresizingMaskIntoConstraints = false
        wishlistimg.contentMode = .scaleAspectFit
        wishlistimg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        wishlistimg.bottomAnchor.constraint(equalTo: addItem.topAnchor, constant: -100).isActive = true
        wishlistimg.widthAnchor.constraint(equalToConstant: 150).isActive = true
        wishlistimg.heightAnchor.constraint(equalToConstant: 85).isActive = true
        //wishlistimg.layer.cornerRadius = 150/2
        wishlistimg.layer.borderWidth = 2
        //wishlistimg.layer.borderColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
        wishlistimg.layer.masksToBounds = true
    }
    
    
    func addItemPressed()
    {
        self.present(AddItemController(), animated:true, completion:nil)    }
    
    func listItemPressed()
    {
        self.present(ListItemController(), animated:true, completion:nil)    }
    
    func searchItemPressed()
    {
        self.present(SearchItemController(), animated:true, completion:nil)    }
    
    func deleteItemPressed()
    {
        self.present(DeleteItemController(), animated:true, completion:nil)    }}
