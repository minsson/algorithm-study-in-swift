//
//  BOJ_2588.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/19.
//  https://www.acmicpc.net/problem/2588

import Foundation

func answer_BOJ_2588() {
    let firstInput = readLine()!
    let secondInput = readLine()!
    var result: [Int] = []
    
    for i in secondInput {
        result.append(Int(firstInput)! * Int(String(i))!)
    }
    
    for _ in 1...result.count {
        print(result.last!)
        result.removeLast()
    }
    
    print(Int(firstInput)! * Int(secondInput)!)
}

