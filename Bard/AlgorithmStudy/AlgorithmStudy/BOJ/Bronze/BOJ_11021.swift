//
//  BOJ_11021.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/31.
//  https://www.acmicpc.net/problem/11021

import Foundation

func answer_BOJ_11021() {
    let totalCount = Int(readLine()!)!
    var result: String = ""
    
    for i in 1...totalCount {
        let input = readLine()!
        let firstNumber = Int(input.components(separatedBy: " ")[0])!
        let secondNumber = Int(input.components(separatedBy: " ")[1])!
        
        if i == 1 {
            result.append("Case #\(i): \(firstNumber + secondNumber)")
        } else {
            result.append("\nCase #\(i): \(firstNumber + secondNumber)")
        }
    }
    print(result)
}
