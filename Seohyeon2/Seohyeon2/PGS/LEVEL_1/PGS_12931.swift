//
//  PGS_12931.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func answer_PGS_자릿수_더하기_12931() {
    func solution(_ n:Int) -> Int {
        let answer:Int = String(n).compactMap { Int(String($0)) }.reduce(0) { $0 + $1 }
        return answer
    }
}
