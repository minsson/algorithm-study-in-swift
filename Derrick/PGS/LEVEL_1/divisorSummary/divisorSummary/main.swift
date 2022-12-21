//
//  main.swift
//  divisorSummary
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation
func solution(_ n:Int) -> Int {
    if n == 0 {
        return 0
    }
    var result = 0
    for number in 1...n {
        if n % number == 0 {
            result += number
        }
    }
    return result
}

print(solution(12))
