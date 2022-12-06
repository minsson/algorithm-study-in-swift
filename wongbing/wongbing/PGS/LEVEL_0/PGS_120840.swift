//
//  PGS_120840.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120840
// 1127

import Foundation

func answer_PGS_구슬을_나누는_경우의수(_ balls:Int, _ share:Int) -> Int {
    return operC(n: balls, r: share)
}

func operC(n: Int, r: Int) -> Int {
    var result = 1.0
    var count = r
    for i in (1...n).reversed() {
        guard count > 0 else { break }
        result *= Double(i)/Double(count)
        count -= 1
    }
    return Int(round(result))
}

