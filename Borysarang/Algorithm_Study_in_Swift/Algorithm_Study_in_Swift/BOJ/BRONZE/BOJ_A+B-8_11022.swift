//
//  BOJ_A+B-8.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/06.
//  https://www.acmicpc.net/problem/11022
//  11월 6일 티어전 - 수꿍 보리
//  걸린 시간: 17분

import Foundation

func answer_BOJ_A_plus_B_minus_8_11022() {
    let testCount =  Int(readLine()!)!
    var result: [String] = []
    for caseCount in 0..<testCount {
        let numberS =  readLine()!.components(separatedBy: " ")
        result.append(aPlusBMinus8(caseCount: caseCount+1, number1: Int(numberS[0])!, number2: Int(numberS[1])!))
        
    }
    for a in 0..<testCount {
        print(result[a])
    }
}

func aPlusBMinus8(caseCount: Int, number1: Int, number2: Int) -> String {
    return "Case #\(caseCount): \(number1) + \(number2) = \(number1 + number2) "
}
