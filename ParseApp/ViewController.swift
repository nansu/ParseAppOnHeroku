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
        
        // saveDataToParse()
        // retrieveRecords()
        // findRecord()
        updateRecord()
    }
    
    func findRecord() {
        let query = PFQuery(className: "People")
        query.whereKey("firstName", equalTo: "Nan")
        query.getFirstObjectInBackground { (object, error) in
            if let object = object {
                print(object)
            } else {
                print( error?.localizedDescription )
            }
        }
    }
    
    func updateRecord() {
        let query = PFQuery(className: "People")
        query.whereKey("firstName", equalTo: "James")
        query.whereKey("lastName", equalTo: "Brown")
        query.getFirstObjectInBackground { (object, error) in
            if let object = object {
                object.setValue("Brownnnnn", forKey: "lastName")
                object.saveInBackground()
            } else {
                print( error?.localizedDescription )
            }
        }
    }
    
    func retrieveRecords() {
        let query = PFQuery(className: "People")
        query.findObjectsInBackground{
            (objects, error) in
            if let objects = objects {
                print(objects)
            } else {
                print(error?.localizedDescription)
            }
        }
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

