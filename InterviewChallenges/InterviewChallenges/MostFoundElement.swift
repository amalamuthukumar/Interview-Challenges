//
//  CommonElement.swift
//  InterviewChallenges
//
//  Created by Adithyha Jayakumar on 04/11/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//

/*
 
 Find the most found element in an array
 
 */

import UIKit

class MostFoundElement: UIViewController {
    
    let colorsArray = ["blue","green","red","yellow","red","red","red","black","gray","blue","yellow","gray","green","violet","indigo","orange","violet","indigo","yellow","blue"]
    
    var topColors : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topColors = getMostCommonElement(array: colorsArray)
        print("Most Common Element:\(topColors)")
    }
    
    func getMostCommonElement(array:[String]) -> [String] {
        
        var colorsDict:[String:Int] = [:]
        
        for color in array {
            if let count = colorsDict[color] {
                colorsDict[color] = count + 1
            } else {
                colorsDict[color] = 1
            }
        }
        
        let highestValue = colorsDict.values.max()
        
        for (key,value) in colorsDict {
            if value == highestValue {
                topColors.append(key)
            }
        }
        
        return topColors
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
