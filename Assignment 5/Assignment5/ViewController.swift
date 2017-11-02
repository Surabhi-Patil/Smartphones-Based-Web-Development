//
//  ViewController.swift
//  Assignment5
//
//  Created by Surabhi Patil on 10/29/17.
//  Copyright © 2017 Surabhi Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "addItem", sender: self)
    }
    


}

