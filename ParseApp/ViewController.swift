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
        
        saveDataToParse()
    }
    
    func saveDataToParse() {
        let person = PFObject(className: "People")
        // person.setValue("James", forKey: "firstName")
        // person.setValue("Brown", forKey: "lastName")
        person["firstName"] = "Peter"
        person["lastName"] = "White"
        person.saveInBackground()
    }


}

