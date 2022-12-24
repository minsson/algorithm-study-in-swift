//
//  PGS_12982.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func answer_PGS_예산_12982() {
    func solution(_ d:[Int], _ budget:Int) -> Int {
        let sorted = d.sorted()
        var budget = budget
        var result = 0
        
        for i in 0..<sorted.count {
            if budget - sorted[i] >= 0 {
                budget -= sorted[i]
                result += 1
            }
        }
        return result
    }
}
