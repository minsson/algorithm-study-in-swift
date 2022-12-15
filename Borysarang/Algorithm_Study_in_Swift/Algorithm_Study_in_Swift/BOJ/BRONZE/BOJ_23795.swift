//
//  BOJ_23795.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/10.
//  https://www.acmicpc.net/problem/23795
//  해결, 걸린시간 5분
//

import Foundation

func answer_사장님도박은재미로하셔야합니다_23795() {
    print(problem_23795())
}

func problem_23795() -> Int {
    var count = 0
    var input = 0
    while true {
        input = Int(readLine()!)!
        if input == -1 {
            break
        }
        count += input
    }
    return count
}
