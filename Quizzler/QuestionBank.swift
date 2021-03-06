//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Haamed Sultani on 2018-09-03.
//  Copyright © 2018 Sultani. All rights reserved.
//

import Foundation

class QuestionBank {
    
    // MARK: - Variables
    var bank = [Question]()
    
    // MARK: - Initializers
    init (){
        // Adding all the questions into our Question Bank
        bank.append(Question(text: "Valentine\'s day is banned in Saudi Arabia", correctAnswer: true))
        bank.append(Question(text: "A slug\'s blood is green", correctAnswer: true))
        bank.append(Question(text: "Approximately one quarter of human bones are in the feet", correctAnswer: true))
        bank.append(Question(text: "The total surface are of two human lungs is approximately 70 square metres.", correctAnswer: true))
        bank.append(Question(text: "In West Virginia, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        bank.append(Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral because the building is considered too sacred a place", correctAnswer: false))
        bank.append(Question(text: "It is illegal to pee in the Ocean in Portugal", correctAnswer: true))
        bank.append(Question(text: "You can lead a cow down the stairs but not up stairs", correctAnswer: false))
        bank.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        bank.append(Question(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        bank.append(Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant", correctAnswer: false))
        bank.append(Question(text: "No piece of square paper can be folded in halfmore than 7 times.", correctAnswer: false))
        bank.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
    }
}
