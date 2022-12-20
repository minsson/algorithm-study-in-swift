//
//  PGS_120809.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120809

import Foundation

func answer_PGS_배열_두배_만들기_120809() {
    func solution(_ numbers:[Int]) -> [Int] {
        return numbers.map { 2 * $0 }
    }
}
