//
//  HashTable.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/13/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

import Foundation

struct HashTable<T: Comparable> {
    func search(key: T) -> String {
        return ""
    }
    
}

// Running times of various dictionary operations implemented as: (Array, SortedArray)

// Search
//Array: O(n)
//SortedArray O(logn)

// Insert
//Array: O(1)
//SortedArray O(n)

// Delete
//Array: O(1) // Take last element and fill the whole
//SortedArray O(n)

// Max Key
//Array: O(n)
//SortedArray O(1)

// Min Key
//Array: O(n)
//SortedArray O(1)

// Predecessor
//Array: O(n)
//SortedArray O(1)

// Successor
//Array: O(n)
//SortedArray O(1)

// (Singly Linked Unsorted List, Doubly Linked Unsorted List, Singly Linked Sorted List, Doubly Linked Sorted List)

// Search
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(n)
//Singly Linked Sorted List: O(n)
//Doubly Linked Sorted List: O(n)

// Insert
//Singly Linked Unsorted List: O(1)
//Doubly Linked Unsorted List: O(1)
//Singly Linked Sorted List: O(n)
//Doubly Linked Sorted List: O(n)

// Delete
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(1)
//Singly Linked Sorted List: O(n)
//Doubly Linked Sorted List: O(1)

// Successor
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(n)
//Singly Linked Sorted List: O(1)
//Doubly Linked Sorted List: O(1)

// Predecessor
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(n)
//Singly Linked Sorted List: O(n)
//Doubly Linked Sorted List: O(1)

// Max Key
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(n)
//Singly Linked Sorted List: O(1)
//Doubly Linked Sorted List: O(1)

// Min Key
//Singly Linked Unsorted List: O(n)
//Doubly Linked Unsorted List: O(n)
//Singly Linked Sorted List: O(1)
//Doubly Linked Sorted List: O(1)



