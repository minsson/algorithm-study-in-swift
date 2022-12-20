//
//  PGS_120851.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120851

import Foundation

func answer_PGS_숨어있는_숫자의_덧셈_1_120851() {
    func solution(_ my_string:String) -> Int {
        var result = 0
        let numbers = my_string.filter {
            $0.isNumber
        }
        numbers.forEach {
            result += Int(String($0))!
        }
        return result
    }
}
