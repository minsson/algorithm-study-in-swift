//
//  main.swift
//  FindNumberRemainerIsOne
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

func solution(_ n:Int) -> Int {
    var array: [Int] = []

    for number in 1...n {
        if n % number == 1 {
            array.append(number)
        }
    }

    return array.first!
}

print(solution(10))
print(solution(12))
