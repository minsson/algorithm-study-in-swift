//
//  BOJ_APlusBMinus8.swift
//  AlogrithmsStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/06.
//  https://www.acmicpc.net/problem/11022

import Foundation

func answer_BOJ_APlusBMinus8_11022() {
    let input = Int(readLine()!)!

    var answers: [String] = []

    for i in 0..<input {
        let twoInput = readLine()!.components(separatedBy: " ").map { Int($0)! }

        let answer = "Case #\(i+1): \(twoInput[0]) + \(twoInput[1]) = \(twoInput[0] + twoInput[1])"
        answers.append(answer)
    }

    answers.forEach { print($0) }
}
