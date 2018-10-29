//
//  PartialSums.swift
//  InterviewChallenges
//
//  Created by Amalarani S P M on 29/10/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//


/**********************************************************************
 
 You are given one array of numbers and another one with pairs (a,b) representing questions of the type: What is the sum of the numbers between position a and b in the array? Efficiently compute the answer to the given questions and print them.
 
 Input:
 
 let numbers = [3, 6, 4, 15, 30]
 let queries = [(1,3),(0,4)]
 
 Expected value/output:
 
 25
 58
 
 **********************************************************************/



import UIKit

class PartialSums: UIViewController {

    let numbers = [3, 6, 4, 15, 30, 15, 15, 7]
    let queries = [(1,3),(2,4),(5,6),(0,7)]
    
    func getRange(queries:[(Int,Int)]) {
        for q in queries {
           let fromIndex = q.0
           let toIndex = q.1
           addNumbersInRange(numbers: numbers, fromIndex: fromIndex, toIndex: toIndex)
        }
    }
    
    func addNumbersInRange(numbers:[Int],fromIndex:Int,toIndex:Int) {
        let myRange:ClosedRange = fromIndex...toIndex
        let total = numbers[myRange].reduce(0,+)
        print("\(total)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRange(queries: queries)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
