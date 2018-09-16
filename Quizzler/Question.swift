//
//  Question.swift
//  Quizzler
//
//  Created by Haamed Sultani on 2018-09-03.
//  Copyright © 2018 Sultani. All rights reserved.
//

import Foundation

class Question {
    
    // MARK: - Variables
    let questionText: String
    let answer: Bool
    
    // MARK: - Initializers
    init (text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
