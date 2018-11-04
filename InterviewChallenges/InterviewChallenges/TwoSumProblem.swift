//
//  TwoSumProblem.swift
//  InterviewChallenges
//
//  Created by Adithyha Jayakumar on 04/11/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//

/**********************************************************************
 
 Returns a boolean if there are two numbers in an array that is equal to a sum
 
 Input:
 
 let numbers = [3, 6, 4, 15, 30]
 let sum = 10
 
 Expected value/output:
 
 true
 
 **********************************************************************/


import UIKit

class TwoSumProblem: UIViewController {

    let numbers = [1,3,6,7,7,12,14]
    let sum = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(findTwoNumbers(array: numbers, sum: sum))
    }

    func findTwoNumbers(array:[Int], sum: Int) -> Bool {
        if array.count == 0 {
            return false
        }
        for i in 0..<array.count {
            let compliment = sum - array[i]
            var tempArray = array
            tempArray.remove(at: i)
            let hasCompliment = binarySearch(array: tempArray, key: compliment)
            if hasCompliment == true {
                print("Two numbers found.. \(compliment) and \(array[i])")
                return true
            }
        }
        return false
    }
    
    func binarySearch(array:[Int], key:Int) -> Bool {
        
        if array.count == 0 {
            return false
        }
        
        let minIndex = 0
        let maxIndex = array.count - 1
        let midIndex = maxIndex/2
        
        let midValue = array[midIndex]
        
        if key < array[minIndex] || key > array[maxIndex] {
            print("\(key) is not in the array")
            return false
        }
        
        if key > midValue {
            let splice = Array(array[minIndex+1...maxIndex])
            return binarySearch(array: splice, key: key)
        }
        
        if key < midValue {
            let splice = Array(array[minIndex...midIndex-1])
            return binarySearch(array: splice, key: key)
        }
        
        if key == midValue {
            print("\(key) is found in the array index")
            return true
        }
        
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
