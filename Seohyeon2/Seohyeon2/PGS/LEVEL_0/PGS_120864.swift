//
//  PGS_120864.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120864

import Foundation

func answer_PGS_숨어있는_숫자의_덧셈_2_120864() {
    func solution(_ my_string:String) -> Int {
        var result = 0
        let numbers = my_string.map { s -> String in
            if s.isNumber {
                return String(s)
            }
            return " "
        }.joined(separator: "").split(separator: " ")
        
        numbers.forEach({
            result += Int($0)!
        })
        
        return result
    }
}
