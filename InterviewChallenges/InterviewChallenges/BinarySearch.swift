//
//  ViewController.swift
//  InterviewChallenges
//
//  Created by Amalarani S P M on 29/10/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//

import UIKit

class BinarySearch: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isElementFound()
        findPosition()
        findPositionGeneric()
        isPrefixFound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/* To check if an element is present in a sorted array */
    
    func binarySearch(array:[Int],target:Int) -> Bool {
        var left = 0
        var right = array.count - 1
        while (left <= right)
        {
            let mid = (left+right)/2
            let value = array[mid]
            if target < value
            {
                right = mid - 1
            }
            if target > value
            {
                left = mid + 1
            }
            if target == value
            {
                return true
            }
        }
        return false
    }
    
    func isElementFound(){
         let array = [1, 2, 3, 5, 5, 7, 10, 36, 50]
         print("isFound:\(binarySearch(array: array, target: 150))")
    }
    
    /* return the index of an element present in a sorted array, else return -1 */
    
    func findPositionRecursive(array:[Int], target:Int, left:Int, right:Int) -> Int {
        if left > right {
            return -1
        }
        let mid = ((left+right)/2)
        let value = array[mid]
        if target == value {
            return mid
        }
        else if target < value {
             let right = mid - 1
             return findPositionRecursive(array: array, target: target, left: left, right: right)
        }
        else if target > value {
            let left = mid + 1
            return findPositionRecursive(array: array, target: target, left: left, right: right)
        } else {
            return -1
        }
    }
    
    func findPosition() {
        let arrayToFindIndex = [1,2,4,7,8,12,15,19,24,50,69,80,100]
        let position = findPositionRecursive(array: arrayToFindIndex, target: 2, left: 0, right: arrayToFindIndex.count-1)
        if position == -1 {
            print("Element not found")
        } else {
            print("Element found at index..\(position)")
        }
    }
    
    /*To check if a string starts with a given prefix in an array of strings */
    
    func binarySearchString(array:[String],target:String) -> Bool {
        var left = 0
        var right = array.count - 1
        while left <= right {
            let mid = (left+right)/2
            let value = array[mid]
            if (value.hasPrefix(target)) {
                return true
            }
            if target < value {
                right = mid - 1
            }
            if target > value {
                left = mid + 1
            }
        }
        return false
    }
    
    func isPrefixFound(){
        let stringArray = ["godfather","houserent","housemaid","touringtalkies","ummmm","umbrella","western"]
        print("isPrefixFound:\(binarySearchString(array: stringArray, target: "um"))")
        print("Index of the first prefix:\(binarySearchStringFirst(array: stringArray, target: "house"))")
        print("Index of the last prefix:\(binarySearchStringLast(array: stringArray, target: "house"))")
    }
    
    /* Returns the index of the first string in our array that starts with a given prefix */
    func binarySearchStringFirst(array:[String],target:String) -> Int {
        var left = 0
        var right = array.count - 1
        while left <= right {
            let mid = (left+right)/2
            let value = array[mid]
            //Our left and right indices are equal and the target is a prefix of the current value
            if left == right && value.hasPrefix(target) {
                return left
            }
           //The target is a prefix of the current value and the previous element in our array is not a prefix of the current value. This works for the binarySearchFirst method.
            if value.hasPrefix(target) {
                if mid > 0 {
                    if !array[mid-1].hasPrefix(target) {
                        return mid
                    }
                }
                right = mid - 1
            } else if target < value {
                right = mid - 1
            } else if target > value {
                left = mid + 1
            }
        }
        return -1
    }
    
    /* Returns the index of the last string in our array that starts with a given prefix */
    func binarySearchStringLast(array:[String],target:String) -> Int {
        var left = 0
        var right = array.count - 1
        while left <= right {
            let mid = (left+right)/2
            let value = array[mid]
            //Our left and right indices are equal and the target is a prefix of the current value
            if left == right && value.hasPrefix(target) {
                return left
            }
            if value.hasPrefix(target) {
                if mid < array.count-1 {
                    if !array[mid+1].hasPrefix(target) {
                        return mid
                    }
                }
                left = mid + 1
            } else if target < value {
                right = mid - 1
            } else if target > value {
                left = mid + 1
            }
        }
        return -1
    }
    
    
    
    
    /* Generic : return the index of an element present in a sorted array, else return -1 */
    
    func findPositionRecursiveGeneric<T:Comparable>(array:[T], target:T, left:Int, right:Int) -> Int {
        if left > right {
            return -1
        }
        let mid = (left + right)/2
        let value = array[mid]
        if target == value {
            return mid
        }
        else if target < value {
            let right = mid - 1
            return findPositionRecursiveGeneric(array: array, target: target, left: left, right: right)
        }
        else if target > value {
            let left = mid + 1
            return findPositionRecursiveGeneric(array: array, target: target, left: left, right: right)
        } else {
            return -1
        }
    }
    
    func findPositionGeneric() {
        let arrayToFindIndex = ["1","2","4","7","8","12","15","19","24","50","69","80","100"]
        let position = findPositionRecursiveGeneric(array: arrayToFindIndex, target: "2", left: 0, right: arrayToFindIndex.count-1)
        if position == -1 {
            print("Element not found")
        } else {
            print("Element found at index..\(position)")
        }
    }
    
}

