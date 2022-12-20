//
//  PGS_120833.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120833

import Foundation

func answer_PGS_배열_자르기_120833() {
    func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
        var result = [Int]()
        for index in (num1...num2) {
            result.append(numbers[index])
        }
        return result
    }
}
