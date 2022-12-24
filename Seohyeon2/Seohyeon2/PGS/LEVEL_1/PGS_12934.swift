//
//  PGS_12934.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func answer_PGS_정수_제곱근_판별_12934() {
    func solution(_ n:Int64) -> Int64 {
        var result = 1
        while true {
            if (result * result) == n {
                result += 1
                return Int64(result * result)
            }
            
            result += 1
            
            if (result * result) > n {
                return -1
            }
        }
    }
}
