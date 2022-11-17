//
//  BOJ_Multiplication.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/16.
//  https://www.acmicpc.net/problem/2588

import Foundation

func answer_BOJ_Multiplication_2588() {
    let firstInput = readLine()!
        .components(separatedBy: " ")
        .compactMap { Int($0) }
        .first!
    let secondInput = readLine()!
        .unicodeScalars
        .map(String.init)
        .compactMap { Int($0) }

    let firstOperation = firstInput * secondInput[2]
    let secondOperation = firstInput * secondInput[1]
    let thirdOperation = firstInput * secondInput[0]

    print(firstOperation)
    print(secondOperation)
    print(thirdOperation)
    print(firstOperation + secondOperation * 10 + thirdOperation * 100)
}
