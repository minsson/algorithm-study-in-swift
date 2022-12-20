//
//  PGS_120852.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120852

import Foundation

func answer_PGS_소인수분해_120852() {
    func solution(_ n:Int) -> [Int] {
        var currentNumber = n
        var result = [Int]()
        var count = 2
        
        while currentNumber > 1 {
            if currentNumber % count == 0 {
                currentNumber /= count
                result.append(count)
            } else {
                count += 1
            }
        }
        
        return Array(Set(result)).sorted()
    }
}
