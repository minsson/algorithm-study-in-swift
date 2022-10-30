//
//  이진수 더하기.swift
//  algorithm-study-in-swift
//
//  Created by Derrick kim on 2022/10/30.
// https://school.programmers.co.kr/learn/courses/30/lessons/120885

import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {

    var answer = ""
    if let number1 = Int(bin1, radix: 2), let number2 = Int(bin2, radix: 2) {
        answer = String(number1 + number2, radix: 2)
    }

    return answer
}

