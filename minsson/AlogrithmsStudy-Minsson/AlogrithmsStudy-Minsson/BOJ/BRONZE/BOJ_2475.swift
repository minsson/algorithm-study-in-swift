//
//  BOJ_2475.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/25.
//  https://www.acmicpc.net/problem/2475

import Foundation

func answer_BOJ_검증수_2475() {
    let input = readLine()!.components(separatedBy: " ")
    var result = 0

    input.forEach { char in
        let number = Int(char)!
        let sqaured = number * number
        
        result += sqaured
    }

    print(result % 10)
}
