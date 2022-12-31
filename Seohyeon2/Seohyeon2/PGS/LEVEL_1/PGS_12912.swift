//
//  PGS_12912.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12912

import Foundation

func answer_PGS_두_정수_사이의_합_12912() {
    func solution(_ a:Int, _ b:Int) -> Int64 {
        if a == b {
            return Int64(a)
        }
        
        var result = 0
        for i in min(a,b)...max(a,b) {
            result += i
        }
        return Int64(result)
    }
}
