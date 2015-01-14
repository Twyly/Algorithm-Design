//
//  Containers.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/12/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

import Foundation

//LIFO
struct Stack<T> {
    
    var items: [T] = []
    
    internal var isEmpty: Bool {
        return items.isEmpty
    }

    mutating internal func push(item: T) {
        items.append(item)
    }
    
    mutating internal func pop() -> T? {
        if isEmpty {
            return nil
        } else {
            return items.removeLast()
        }
    }
}

//FIFO
struct Queue<T> {
    
    private var head: QNode<T>?
    private var tail: QNode<T>?
    
    init() { }
    
    internal func printKeys() {
        var node = head
        while node != nil {
            println("\(node?.key)")
            node = node?.next
        }
    }
    
    // Enque at the end
    internal mutating func enqueue(key: T) {
        if let confirmedTail = tail {
            tail = QNode(key: key)
            confirmedTail.next = tail
        } else {
            head = QNode(key: key)
            tail = head
        }
    }
    
    // Dequeue at the beginning
    internal mutating func dequeue() -> T? {
        if let confirmedHead = head {
            head = head?.next
            if isEmpty {
                tail = nil
            }
            return confirmedHead.key
        } else {
            return nil
        }
    }
    
    internal var isEmpty: Bool {
        return head == nil ? true : false
    }
}

class QNode<T> {
    
    var next: QNode?
    var key: T
    
    init(key: T) {
        self.key = key
    }
}



