//
//  ViewController.swift
//  Quiz
//
//  Version 1 created by Kelly McAlpine on 2016-01-15.
//  Copyright © 2016 studentGeorgian. All rights reserved.
//
//  Version 1.1 2016-01-21

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var questionLabel:  UILabel!
    @IBOutlet var answerLabel:  UILabel!
    
    let questions:  [String] = ["What is cognac made from?",
                                "What is 7 + 7?",
                                "What is the capital of Vermont?"]
    
    let answers:  [String] = ["Grapes",
                              "14",
                              "Montpelier"]
    
    var currentQuestionIndex:  Int = 0
    
    @IBAction func showNextQuestion(sender:  AnyObject)
    {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count
        {
            currentQuestionIndex = 0
        }
        
        let question:  String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender:  AnyObject)
    {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

