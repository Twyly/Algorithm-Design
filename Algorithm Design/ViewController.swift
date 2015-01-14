//
//  ViewController.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/12/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

// Fundamental Abstract Data Types: Containers (independent of content), Dictionaries, and Priority Queues
// Implemented with Arrays and Lists (Contiguous or Linked)

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func testContainers() {
        println("STACK")
        var stack = Stack<String>()
        stack.push("A")
        stack.push("B")
        stack.push("C")
        stack.push("D")
        println("\(stack.pop())")
        println("\(stack.pop())")
        println("\(stack.pop())")
        println("\(stack.pop())")
        println("\(stack.pop())")
        
        println("Queue")
        var queue = Queue<String>()
        queue.enqueue("A")
        queue.enqueue("B")
        queue.enqueue("C")
        queue.enqueue("D")
        println("\(queue.dequeue())")
        println("\(queue.dequeue())")
        println("\(queue.dequeue())")
        println("\(queue.dequeue())")
        println("\(queue.dequeue())")
        println("\(queue.dequeue())")
        queue.enqueue("A")
        println("\(queue.dequeue())")

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
    
    func testBinaryTree() {
        let tree = BinaryTree(key: 4)
        tree.insert(1)
        tree.insert(10)
        tree.insert(4)
        tree.insert(9)
        tree.insert(1)
        tree.insert(50)
        tree.insert(2)
        tree.insert(23)
        tree.printKeys()
        
    }


}

