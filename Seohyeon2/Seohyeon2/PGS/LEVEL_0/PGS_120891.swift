//
//  PGS_120891.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/05.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120891

import Foundation

func answer_PGS_369게임_120891() {
    func solution(_ order:Int) -> Int {
        let crap = String(order).filter {
            ["3", "6", "9"].contains($0) == true
        }
        return crap.count
    }
}
