//
//  PGS_콜라츠추측.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/10/29.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12943?language=swift
//  10월 29일 티어전 - 핀 보리
//  걸린 시간: 
//

import Foundation

func answer_PGS_콜라츠추측() {
    let testInput: [Int] = [6, 16, 626331]
    testInput.forEach { input in
        print(solution(input))
    }
}

func solution(_ num:Int) -> Int {
    var count: Int = 0
    var target = num
    
    while true {
        if target == 1 {
            break
        } else if count > 500 {
            return -1
        }
        target = 콜라츠작업(input: target)
        count += 1
    }
    
    return count
}

func 콜라츠작업(input: Int) -> Int {
    if input % 2 == 0 {
        return input / 2
    } else {
        return (input * 3) + 1
    }
}

