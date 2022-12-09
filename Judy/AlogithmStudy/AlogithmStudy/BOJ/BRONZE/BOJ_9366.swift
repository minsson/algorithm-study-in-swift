//
//  BOJ_9366.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/09.
//  https://www.acmicpc.net/problem/9366

import Foundation

func answer_BOJ_삼각형분류_9366() {
    let round = Int(readLine()!)!
    var numbers: [[Int]] = []
    var i = 1

    for _ in 1...round {
        let number = readLine()!.components(separatedBy: " ")
        numbers.append(number.map { Int($0)! })
    }

    for number in numbers {
        let sorted = number.sorted(by: >)
        
        if sorted[0] >= sorted[1] + sorted[2] {
            print("Case #\(i): invalid!")
            i += 1
            continue
        }
        
        if sorted[0] == sorted[1] &&
            sorted[1] == sorted[2] &&
            sorted[0] == sorted[2] {
            print("Case #\(i): equilateral")
            i += 1
            continue
        }
        
        if sorted[0] != sorted[1] &&
            sorted[0] != sorted[2] &&
            sorted[1] != sorted[2] {
            print("Case #\(i): scalene")
            i += 1
            continue
        }
        
        print("Case #\(i): isosceles")
        i += 1
    }

}
