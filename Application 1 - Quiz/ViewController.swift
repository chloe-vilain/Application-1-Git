//
//  ViewController.swift
//  Application 1 - Quiz
//
//  Created by Chloe W Vilain on 2/13/16.
//  Copyright © 2016 Chloe W Vilain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questionsAnswersArray: [(Question:String,Answer:String)] = AnswersModel.answersArray
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questionsAnswersArray.count {
                currentQuestionIndex = 0
        }
        let question: String = questionsAnswersArray[currentQuestionIndex].Question
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = questionsAnswersArray[currentQuestionIndex].Answer
        answerLabel.text = answer
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questionsAnswersArray[currentQuestionIndex].Question
    }


}

