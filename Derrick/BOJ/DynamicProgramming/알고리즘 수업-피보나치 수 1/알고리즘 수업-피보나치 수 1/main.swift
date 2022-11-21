//
//  main.swift
//  알고리즘 수업-피보나치 수 1
//
//  Created by Derrick kim on 2022/11/19.
//

import Foundation

var number = Int(readLine()!)!

var count = 0

func solution(_ n: Int) -> Int {
    var numberArray = Array(repeating: 0, count: n+1)
    
    numberArray[1] = 1
    numberArray[2] = 1

    for i in 3..<n+1 {
        numberArray[i] = numberArray[i-1] + numberArray[i-2]
        count += 1
    }
    return numberArray[n]
}

print(solution(number), count)

