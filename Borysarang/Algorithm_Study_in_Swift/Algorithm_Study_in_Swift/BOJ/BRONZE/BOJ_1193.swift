//
//  BOJ_1193.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/21.
//  https://www.acmicpc.net/problem/1193
//
import Foundation

func answer_분수찾기_1193() {    
    let numberS =  Int(readLine()!)!
    let result = problem_1193(target: numberS)
    print("\(result.row)/\(result.column)")
}

func problem_1193(target: Int) -> (row: Int, column: Int) {
    if target == 1 {
        return (1,1)
    }
    
    var row = 0
    var col = 0
    var line = 1
    var current = 1
    var currentPlus = 2
    while current < target {
        current += currentPlus
        currentPlus += 1
        line += 1
    }
//    print("line = \(line), current = \(current)")
    if line % 2 == 0 {
        row = line
        col = 1
        for _ in 0..<(current - target) {
            row -= 1
            col += 1
        }
    } else {
        row = 1
        col = line
        for _ in 0..<(current - target) {
            row += 1
            col -= 1
        }
    }
    return (row, col)
}
