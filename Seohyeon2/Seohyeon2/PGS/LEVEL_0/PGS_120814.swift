//
//  PGS_120814.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120814

import Foundation

func answer_PGS_피자_나눠_먹기_1_120813() {
    func solution(_ n:Int) -> Int {
        let remainder = n % 7 == 0 ? 0 : 1
        return (n / 7) + remainder
    }
}
