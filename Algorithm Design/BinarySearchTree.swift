//
//  BinarySearchTree.swift
//  Algorithm Design
//
//  Created by Teddy Wyly on 1/13/15.
//  Copyright (c) 2015 Teddy Wyly. All rights reserved.
//

import Foundation


// Not Balanced
class BinaryTree<T: Comparable> {
    
    var key: T
    var parent: BinaryTree?
    var leftChild: BinaryTree? {
        didSet {
            leftChild?.parent = self
        }
    }
    var rightChild: BinaryTree? {
        didSet {
            rightChild?.parent = self
        }
    }

    init(key: T) {
        self.key = key
    }
    
    func search(key: T) -> BinaryTree? {
        if key == self.key {
            return self
        } else if key < self.key {
            if let lc = leftChild {
                return lc.search(key)
            } else {
                return nil
            }
        } else {
            if let rc = rightChild {
                return rc.search(key)
            } else {
                return nil
            }
        }
    }
    
    func minimum() -> BinaryTree {
        var currentTree = self
        while currentTree.leftChild != nil {
            currentTree = currentTree.leftChild!
        }
        return currentTree
    }
    
    func maximum() -> BinaryTree {
        var currentTree = self
        while currentTree.rightChild != nil {
            currentTree = currentTree.leftChild!
        }
        return currentTree
    }
    
    func printKeys() {
        leftChild?.printKeys()
        println("\(key)")
        rightChild?.printKeys()
    }
    
    func insert(key: T) {
        if key < self.key {
            if let lc = leftChild {
                lc.insert(key)
            } else {
                leftChild = BinaryTree(key: key)
            }
        } else {
            if let rc = rightChild {
                rc.insert(key)
            } else {
                rightChild = BinaryTree(key: key)
            }
        }
    }
    
    func delete(key: T) -> BinaryTree? {
        
        
        var tree = search(key)
        if let confirmedTree = tree {
            
            
            // No Children
            if confirmedTree.leftChild == nil && confirmedTree.rightChild == nil {
                //tree = nil
                // Two Children
                // Replace tree with immediate successor (in right subtree)
            } else if confirmedTree.leftChild != nil && confirmedTree.rightChild != nil {
                
                // One Child
            } else {
                if let lc = confirmedTree.leftChild {
                    
                    
                } else if let rc = confirmedTree.rightChild {
                    
                }
            }
            
            return tree
            
        } else {
            return nil
        }
    }
    
    
}
