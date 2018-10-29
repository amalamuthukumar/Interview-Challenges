//
//  CookingReceipes.swift
//  InterviewChallenges
//
//  Created by Amalarani S P M on 29/10/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//



/**********************************************************************
 
 You are given an array recipes containing a list of cooking recipes. Find the recipes containing a key ingredient keyword. Example: beef, eggs, etc.
 
 Input:
 
 let recipes = ["Put eggs in a frying pan", "Cut the beef", "Boil the beef"]
 let keyword = "beef"
 
 Expected value/output:
 
 ["Cut the beef", "Boil the beef"]
 
 **********************************************************************/


import UIKit

class CookingReceipes: UIViewController {

    let recipes = ["Put eggs in a frying pan", "Cut the beef", "Boil the beef"]
    let keyword = "beef"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(searchForTheKeyword(receipes: recipes, keyword: keyword))")
    }
    
    func searchForTheKeyword(receipes:[String],keyword:String) -> [String]{
        var foundReceipes = [String]()
        for eachReceipe in receipes {
            if eachReceipe.contains(keyword) {
                foundReceipes.append(eachReceipe)
            }
        }
        return foundReceipes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
