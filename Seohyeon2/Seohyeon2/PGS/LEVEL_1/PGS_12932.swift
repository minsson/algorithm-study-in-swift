//
//  PGS_12932.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12932

import Foundation

func answer_PGS_자연수_뒤집어_배열로_만들기_12932() {
    func solution(_ n:Int64) -> [Int] {
        return String(n).compactMap{ Int(String($0)) }.reversed()
    }
}
