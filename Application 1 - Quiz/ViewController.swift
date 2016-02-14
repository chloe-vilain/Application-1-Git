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
    
    let questions: [String] = ["What is your name?",
                                "What is your quest?",
                                "What is your favourite colour?"]
    let answers: [String] = ["Chloe",
                                "To learn iOS dev",
                                "Turquoise"]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
                currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }


}

