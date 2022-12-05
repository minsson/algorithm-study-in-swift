//
//  BOJ_TestResult.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/12/03.
//  https://www.acmicpc.net/problem/9498

import Foundation

func answer_BOJ_TestResult_9498() {
    let input = Int(readLine()!)!

    switch input {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("F")
    }
}
