//
//  PGS_120909.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120909

import Foundation

func answer_PGS_제곱수_판별하기_120909() {
    func solution(_ n:Int) -> Int {
        for num in (2...n/2) {
            if (num*num) == n {
                return 1
            }
        }
        return 2
    }
}
