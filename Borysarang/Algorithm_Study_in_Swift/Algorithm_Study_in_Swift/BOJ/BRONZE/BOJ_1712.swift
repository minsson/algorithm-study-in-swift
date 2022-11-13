//
//  BOJ_1712.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/12.
//  https://www.acmicpc.net/problem/1712
//

// 1000 70 170

import Foundation

func answer_손익분기점_1712() {
    let testCount =  1
    //let testCount =  Int(readLine()!)!
    var result: [Double] = []
    
    for _ in 0..<testCount {
        let numbers =  readLine()!.components(separatedBy: " ").map { Double($0)! }
        result.append(problem_1712(input: numbers))
    }
    for a in 0..<testCount {
        print(Int(result[a]))
    }
}

func problem_1712(input: [Double]) -> Double {
    let fixedCost = input[0]
    let variableCost = input[1]
    let sellingCost = input[2]
    if sellingCost <= variableCost {
        return -1
    }
    let count = fixedCost / (sellingCost - variableCost)
    
    return count == 0 ? count : count + 1
}
