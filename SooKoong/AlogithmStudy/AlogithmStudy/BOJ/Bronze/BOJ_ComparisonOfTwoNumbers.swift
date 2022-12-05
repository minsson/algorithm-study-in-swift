//
//  BOJ_ComparisonOfTwoNumbers.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/25.
//  https://www.acmicpc.net/problem/1330

import Foundation

func answer_BOJ_ComparisonOfTwoNumbers_1330() {
    let input = readLine()?.components(separatedBy: " ")

    let firstNumber = Int(input![0])!
    let secondNumber = Int(input![1])!

    if firstNumber < secondNumber {
        print("<")
    } else if firstNumber > secondNumber {
        print(">")
    } else {
        print("==")
    }
}
