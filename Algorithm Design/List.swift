//
//  List.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/12/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

import Foundation

class List<T: Comparable> {
    
    var head: Node<T>?
    
    init(initialKey: T) {
        head = Node<T>(key: initialKey)
    }
    
    func search(key: T) -> Node<T>? {
        var currentNode: Node<T>? = head
        while currentNode != nil {
            if currentNode!.key == key {
                return currentNode!
            } else {
                currentNode = currentNode!.next
            }
        }
        return nil
    }
    
    func insert(key: T) {
        let oldHead = head
        head = Node(key: key)
        head!.next = oldHead
    }
    
    // Returns Node that got deleted
    func delete(key: T) -> Node<T>? {
        // Check if head is being deleted
        if key == head?.key {
            let oldHead = head
            head = head?.next
            return oldHead
        }
        if let previous = predeccesor(key) {
            let nodeToDelete = previous.next
            previous.next = nodeToDelete?.next
            return nodeToDelete
        } else {
           return nil
        }
    }
    
    func printKeys() {
        var currentNode: Node<T>? = head
        while currentNode != nil {
            println("Node: \(currentNode?.key)")
            currentNode = currentNode!.next
        }
    }
    
    private func predeccesor(key: T) -> Node<T>? {
        var currentNode: Node<T>? = head
        while currentNode != nil {
            if currentNode!.next?.key == key {
                return currentNode
            } else {
                currentNode = currentNode!.next
            }
        }
        return nil
    }
}

class Node<T: Comparable> {
    private var key: T
    private var next: Node<T>?
    init(key: T) {
        self.key = key
    }
}

