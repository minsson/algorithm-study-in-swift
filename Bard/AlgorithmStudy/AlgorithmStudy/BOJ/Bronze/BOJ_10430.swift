//
//  BOJ_10430.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/04.
//  https://www.acmicpc.net/problem/10430

import Foundation

func answer_BOJ_10430() {
    let problem = readLine()!
    let firstNumber = Int(problem.components(separatedBy: " ")[0])!
    let secondNumber = Int(problem.components(separatedBy: " ")[1])!
    let thirdNumber = Int(problem.components(separatedBy: " ")[2])!
    
    if firstNumber >= 2, secondNumber >= 2, thirdNumber >= 2,
       firstNumber <= 10000, secondNumber <= 10000, thirdNumber <= 10000 {
        print((firstNumber+secondNumber)%thirdNumber)
        print(((firstNumber%thirdNumber) + (secondNumber%thirdNumber))%thirdNumber)
        print((firstNumber*secondNumber)%thirdNumber)
        print(((firstNumber%thirdNumber) * (secondNumber%thirdNumber))%thirdNumber)
    }
}
