//
//  PGS_120906.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120906

import Foundation

func answer_PGS_자릿수_더하기_120906() {
    func solution(_ n:Int) -> Int {
        var result = 0
        for num in String(n) {
            result += Int(String(num))!
        }
        return result
    }
}
