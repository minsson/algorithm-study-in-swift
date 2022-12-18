//
//  PGS_120897.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120897

import Foundation

func answer_PGS_약수_구하기_120897() {
    func solution(_ n:Int) -> [Int] {
        return (1...n).filter {
           n % $0 == 0
        }.sorted()
    }
}
