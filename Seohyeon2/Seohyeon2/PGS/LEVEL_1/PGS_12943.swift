//
//  PGS_12943.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12943

import Foundation

func answer_PGS_콜라츠_추측_12943() {
    func solution(_ num:Int) -> Int {
        var result = num
        for count in 0..<500 {
            if result == 1 {
                return count
            }
            
            if result % 2 == 0 {
                result /= 2
            } else {
                result = (result * 3) + 1
            }
        }
        return -1
    }
}
