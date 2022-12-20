//
//  PGS_120878.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120878

import Foundation

func answer_PGS_유한소수_판별하기_120878() {
    func solution(_ a:Int, _ b:Int) -> Int {
        return String((Double(a) / Double(b))).count < 16 ? 1 : 2
    }
}
