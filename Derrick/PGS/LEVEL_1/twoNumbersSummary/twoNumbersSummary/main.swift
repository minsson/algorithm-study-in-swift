//
//  main.swift
//  twoNumbersSummary
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    if a == b {
        return Int64(a)
    }

    if a < b {
        for number in a...b {
            sum += number
        }
    } else {
        for number in b...a {
            sum += number
        }
    }
    return Int64(sum)
}

print(solution(3, 5))
