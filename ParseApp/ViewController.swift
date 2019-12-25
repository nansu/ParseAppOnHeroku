//
//  ViewController.swift
//  ParseApp
//
//  Created by Nan Su on 12/25/19.
//  Copyright © 2019 Nan Su. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let person = PFObject(className: "People")
        person.setValue("Nan", forKey: "firstName")
        person.setValue("Su", forKey: "lastName")
        person.saveInBackground()
    }


}

