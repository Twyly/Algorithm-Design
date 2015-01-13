//
//  ViewController.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/12/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.testList()
    }

    
    func testList() {
        let newList = List(initialKey: "Teddy")
        newList.insert("Ian")
        newList.insert("Nick")
        newList.delete("Sam")
        newList.delete("Ian")
        newList.delete("Teddy")
        newList.delete("Nick")
        newList.printKeys()
        newList.insert("Nick")
        newList.printKeys()

    }


}

