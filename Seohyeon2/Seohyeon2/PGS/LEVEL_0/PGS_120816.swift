//
//  PGS_120816.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120816

import Foundation

func answer_PGS_피자_나눠_먹기_3_120816() {
    func solution(_ slice:Int, _ n:Int) -> Int {
        let remainder = n % slice == 0 ? 0 : 1
        return n / slice + remainder
    }
}
