//
//  PGS_12922.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12922

import Foundation

func answer_PGS_수박수박수박수박수박수_12922() {
    func solution(_ n:Int) -> String {
        if n == 0 {
            return ""
        }
        
        var result = ""
        for i in 1...n {
            if i % 2 != 0 {
                result += "수"
            } else {
                result += "박"
            }
        }
        return result
    }
}
