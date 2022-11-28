//
//  PGS_131705.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/13.
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/131705

import Foundation

func answer_PGS_삼총사_131705() {
    func solution(_ number:[Int]) -> Int {
        var result = 0
        for i in (0...number.count-3) {
            for j in (i+1...number.count-2) {
                for k in (j+1...number.count-1) {
                    if number[i] + number[j] + number[k] == 0 {
                        result += 1
                    }
                }
            }
        }
        return result
    }
}
