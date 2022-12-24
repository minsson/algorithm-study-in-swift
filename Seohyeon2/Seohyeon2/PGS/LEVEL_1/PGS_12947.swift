//
//  PGS_12947.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12947

import Foundation

func answer_PGS_하샤드_수_12947() {
    func solution(_ x:Int) -> Bool {
        let arr = String(x).compactMap { Int(String($0)) }
        let totalX = arr.reduce(0) { return $0 + $1 }
        return (x % totalX == 0) ? true : false
    }
}
