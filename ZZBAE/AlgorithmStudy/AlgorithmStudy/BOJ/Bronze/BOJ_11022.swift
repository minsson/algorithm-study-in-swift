//
//  BOJ_11022.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/06.
//  https://www.acmicpc.net/problem/11022

import Foundation

func answer_BOJ_11022() {
    let T = Int(readLine()!)!

    for testCase in 1...T {
        let number = readLine()!
        let numberArr = number.split(separator: " ")
        
        let firstNumber = Int(numberArr[0])!
        let secondNumber = Int(numberArr[1])!

        print("Case #\(testCase): \(firstNumber) + \(secondNumber) = \(firstNumber + secondNumber)")
    }
}
