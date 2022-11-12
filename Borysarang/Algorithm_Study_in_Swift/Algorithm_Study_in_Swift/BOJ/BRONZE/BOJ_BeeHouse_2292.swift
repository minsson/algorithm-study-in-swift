//
//  BOJ_BeeHouse_2292.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/12.
//  https://www.acmicpc.net/problem/2292
//

import Foundation

func answer_벌집_2292() {
    let testCount =  1
    var result: [Int] = []
    
    for _ in 0..<testCount {
        let numberS =  Int(readLine()!)!
        result.append(problem_case(input: numberS))
    }
    for a in 0..<testCount {
        print(result[a])
    }
}

func problem_case(input: Int) -> Int {
    var count = 1
    var min = 1
    var max = 1
    
    while true {
        if check(min: min, max: max, target: input) {
            break
        }
        
        min = max + 1
        max = max + (6 * count)
        count += 1
    }
    return count
}

func check(min: Int, max: Int, target: Int) -> Bool {
    return ((target >= min) && (target <= max)) ? true : false
}
