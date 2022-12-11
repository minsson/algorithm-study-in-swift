//
//  PGS_120841.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://school.programmers.co.kr/learn/courses/30/lessons/120841
// 10분

import Foundation

func answer_PGS_점의위치구하기(_ dot:[Int]) -> Int {
    let x = dot[0]
    let y = dot[1]
    switch (x, y) {
    case let point where point.0 > 0 && point.1 > 0:
        return 1
    case let point where point.0 < 0 && point.1 > 0:
        return 2
    case let point where point.0 < 0 && point.1 < 0:
        return 3
    case let point where point.0 > 0 && point.1 < 0:
        return 4
    default:
        return 0
    }
}
