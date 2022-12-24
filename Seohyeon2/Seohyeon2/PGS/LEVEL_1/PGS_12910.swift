//
//  PGS_12910.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12910

import Foundation

func answer_PGS_나누어_떨어지는_숫자_배열_12910() {
    func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
        var result = [Int]()
        for number in arr {
            if number % divisor == 0 {
                result.append(number)
            }
        }
        
        if !result.isEmpty {
            return result.sorted()
        }
        
        return [-1]
    }
}
