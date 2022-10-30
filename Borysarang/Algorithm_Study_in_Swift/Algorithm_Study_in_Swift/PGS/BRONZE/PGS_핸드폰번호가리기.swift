//
//  PGS_핸드폰번호가리기.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/10/30.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12948
//

import Foundation

func answer_PGS_핸드폰번호가리기() {
    let testInput: [String] = ["01033334444","027778888"]
    testInput.forEach { input in
        print(solution(input))
    }
}

func solution(_ phone_number: String) -> String {
    var result = ""
    var count = 0
    phone_number.forEach { character in
        if count < phone_number.count - 4 {
            result += "*"
        }else {
            result += String(character)
        }
        count += 1
    }
    return result
}

