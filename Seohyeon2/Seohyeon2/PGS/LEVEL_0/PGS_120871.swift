//
//  PGS_120871.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120871

import Foundation

func answer_PGS_저주의_숫자_3_120871() {
    func solution(_ n:Int) -> Int {
        var result = 0
        for _ in 1...n {
            result += 1

            while (result % 3 == 0) ||
                    (String(result).contains("3") == true) {
                result += 1
            }
        }
        return result
    }
}
