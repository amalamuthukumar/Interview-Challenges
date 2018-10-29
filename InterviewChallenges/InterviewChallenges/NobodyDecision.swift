//
//  NobodyDecision.swift
//  InterviewChallenges
//
//  Created by Amalarani S P M on 29/10/18.
//  Copyright © 2018 Amalarani S P M. All rights reserved.
//

/**********************************************************************

  Dr. Nobody is a bit confused about not being able to remember the past and the fact that he can see the future. You are given an array containing pairs of decisions he has to make and choices he can take throughout his life. Help Dr. Nobody by counting the number of decisions, the number of choices, the number of possible outcomes and printing them.

Input:

let life = [("Who will you go with?", ["mother", "father"]), ("Who will you marry?", ["Anna", "Elise", "Jean"])]

Expected value/output:

decisions = 2
choices = 5
outcomes = 6
 
**********************************************************************/


import UIKit

class NobodyDecision: UIViewController {

    let life = [("Who will you go with?", ["mother", "father"]), ("Who will you marry?", ["Anna", "Elise", "Jean"])]

    func numberOfDecisions(life:[(String, [String])]) -> Int {
        return life.count
    }
    
    func numberOfChoices(life:[(String, [String])]) -> Int {
        var choices: Int = 0
        for decision in life {
            choices += decision.1.count
        }
        return choices
    }
    
    func numberOfOutcomes(life:[(String, [String])]) -> Int {
        var outcomes: Int = 1
        for decision in life {
            outcomes *= decision.1.count
        }
        return outcomes
    }
    
    override func viewDidLoad() {
        print("No.of.decisions..\(numberOfDecisions(life: life))")
        print("No.of.choices..\(numberOfChoices(life: life))")
        print("No.of.outcomes..\(numberOfOutcomes(life: life))")
    }
}
