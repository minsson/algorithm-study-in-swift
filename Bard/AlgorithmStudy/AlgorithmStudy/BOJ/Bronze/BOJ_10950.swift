//
//  BOJ_10950.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/24.
//  https://www.acmicpc.net/problem/10950

import Foundation

func answer_BOJ_10950() {
    var count = Int(readLine()!)!
    var result: [Int] = []
    while count > 0 {
        let input = readLine()!
        let firstInput = Int(input.components(separatedBy: " ")[0])!
        let secondInput = Int(input.components(separatedBy: " ")[1])!
        
        result.append(firstInput + secondInput)
        count -= 1
    }
    
    result.forEach { print($0) }
}
