//
//  PGS_120813.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120813

import Foundation

func answer_PGS_짝수는_싫어요_120813() {
    func solution(_ n:Int) -> [Int] {
        return (1...n).filter { $0 % 2 == 1}
    }
}
