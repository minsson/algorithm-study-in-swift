//
//  PGS_120907.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/08.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120907

import Foundation

func answer_PGS_OX퀴즈(_ quiz:[String]) -> [String] {
    let quizs = quiz.map {
        $0.components(separatedBy: " ")
    }
    var result: [String] = []
    
    for question in quizs {
        let left = Int(question[0])!
        let right = Int(question[2])!
        var solution = 0
        
        if question[1] == "+" {
            solution = left + right
        } else {
            solution = left - right
        }
        
        if Int(question[4])! == solution {
            result.append("O")
        } else {
            result.append("X")
        }
    }
    
    return result
}
