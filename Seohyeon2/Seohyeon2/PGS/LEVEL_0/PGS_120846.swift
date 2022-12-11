//
//  PGS_120846.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/05.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120846

import Foundation

func answer_PGS_합성수_찾기_120846() {
    func solution(_ n:Int) -> Int {
        if n < 4 {
            return 0
        }
        
        var result = 0
        
        for i in (4...n) {
            for j in (2...i/2) {
                if i % j == 0 {
                    result += 1
                    break
                }
            }
        }
        return result
    }
}
