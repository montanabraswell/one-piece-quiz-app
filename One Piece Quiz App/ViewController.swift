//
//  ViewController.swift
//  One Piece Quiz App
//
//  Created by Montana  on 2/2/23.
//

import UIKit

class ViewController: UIViewController, QuizProtocol {

    // Declare model property and initialize a new quiz model object
    var model = QuizModel()
    
    // When Quizmodel comes back with questions, need to keep track of them
    // Declare questions property and initialize with a new questions object but an empty array
    var questions = [Question]()
    
    // Keep track of which question the user is currently looking at
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // In viewDidLoad, it will call model.getQuestions
        // Kicks off process for the quizModel to fetch the questions
        // Assigning view controller as the delegate
        model.delegate = self
        model.getQuestions()
    }
    
    // MARK: - QuizProtocol Methods
    
    func questionsRetrieved(_ questions: [Question]) {
        print("questions retrieve from model")
    }
    
}
