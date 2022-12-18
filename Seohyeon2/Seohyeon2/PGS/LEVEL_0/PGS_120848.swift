//
//  PGS_120848.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120848

import Foundation

func answer_PGS_팩토리얼_120848() {
    func solution(_ n:Int) -> Int {
        var fac = 1
        for i in 1...n {
            fac *= i
            if fac == n {
                return i
            } else if fac > n {
                return i-1
            }
        }
        
        return 1
    }
}
