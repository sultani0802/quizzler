//
//  ViewController.swift
//  Quizzler
//
//  Created by Haamed Sultani on 2018-09-03.
//  Copyright © 2018 Sultani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    let questionBank = QuestionBank()
    var selectedAnswer: Bool = false
    var questionNumber: Int = 1
    var gameScore: Int = 0
    
    // MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    // MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = questionBank.bank[0] // Load the first question
        // Update the View with a new game UI elements
        questionLabel.text = firstQuestion.questionText
        progressLabel.text = "\(questionNumber)/\(questionBank.bank.count)"
        scoreLabel.text = "Score: \(gameScore)"
    }
    
    
    // MARK: - IBActions
    // Called everytime the user presses "True" or "False" buttons
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            selectedAnswer = true // User thinks the fact is true
        }
        else if sender.tag == 2 {
            selectedAnswer = false // User thinks the fact is false
        }
        
        checkAnswer() // Check if their answer is right
        questionNumber += 1 // Increment the question counter
        nextQuestion() // Load the next question
        updateUI() // Update the UI
    }
    
    
    // MARK: - My Methods
    func updateUI() {
        progressLabel.text = "\(questionNumber)/\(questionBank.bank.count)" // Update the question counter
        scoreLabel.text = "Score: \(gameScore)" // Update the score
        progressBar.frame.size.width = CGFloat(questionNumber) * (view.frame.size.width / 13) // Update the progress bar
    }
    
    
    func nextQuestion() {
        if questionNumber <= 12 { // If we haven't reached the last question, load the next question
            questionLabel.text = questionBank.bank[questionNumber].questionText
        } else { // Otherwise, ask the user to restart the game
            print("should restart")
            // Create a pop-up that allows the user to restart the game
            let alert = UIAlertController(title: "Game Over", message: "Would you like to restart the game?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    // Check if the user selected the correct answer
    func checkAnswer() {
        if selectedAnswer == questionBank.bank[questionNumber].answer {
            ProgressHUD.showSuccess("Correct!")
            gameScore += 1000 // Give the user points
        }
        else {
            ProgressHUD.showError("Incorrect!")
        }
    }
    
    // Restart the game
    func startOver() {
        questionNumber = 1 // Set the question counter to 0
        gameScore = 0 // Reset the score
        nextQuestion() // Load the next question
        updateUI() // Update the UI with the correct info
    }
}
