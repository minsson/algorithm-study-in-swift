//
//  PGS_12944.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func answer_PGS_평균_구하기_12944() {
    func solution(_ arr:[Int]) -> Double {
        return Double(arr.reduce(0) {$0 + $1}) / Double(arr.count)
    }
    
}
