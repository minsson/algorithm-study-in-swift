//
//  PGS_Lambskewers_120830.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120830
//


import Foundation

func answer_120830() {
    let testInput: [[Int]] = [[10, 3],[64, 6]] //입력값 조정하기
    testInput.forEach { input in
        print(solution120830(input[0],input[1]))
    }
}

func solution120830(_ n:Int, _ k:Int) -> Int {
    return (n * 12000) + (k * 2000) - (n / 10 * 2000)
}
