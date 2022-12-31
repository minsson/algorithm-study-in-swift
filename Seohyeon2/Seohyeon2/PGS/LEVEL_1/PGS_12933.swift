//
//  PGS_12933.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12933

import Foundation

func answer_PGS_정수_내림차순으로_배치하기_12933() {
    func solution(_ n:Int64) -> Int64 {
        return Int64(String(String(n).sorted {$0 > $1})) ?? 0
    }
}
