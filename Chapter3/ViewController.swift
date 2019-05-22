//
//  ViewController.swift
//  Chapter3
//
//  Created by Tony Chan on 23/5/2019.
//  Copyright © 2019 Tony Chan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MARK: optional
        
        //can set nil to the variable
        
        struct Human {
            var name : String?
        }
        let tony = Human(name: "Tony")
        let noOne = Human(name: nil) //error if without ? after String
        
        
        //optional binding
        if let name = tony.name {
            print(name)
        }
        
        
        //MARK: Type casting and Inspection
        
        //use as? to downcast the type in a subclass
        class Animal{
            
        }
        class Cat: Animal{
            
        }
        class Dog: Animal{
            
        }
//        let pet = Cat()
        let pet = Dog()
        if let cat = pet as? Cat {
            print("it is cat")
        }
        else if let dog = pet as? Dog {
            print("it is dog")
        }
    }

    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

