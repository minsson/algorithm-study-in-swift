//
//  PGS_120923.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/20.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120923

import Foundation

func answer_PGS_연속된_수의_합_120923() {
    func solution(_ num:Int, _ total:Int) -> [Int] {
        let a = ((2 * total / num) - num + 1) / 2
        return (a..<a+num).map { $0 }
    }
}
