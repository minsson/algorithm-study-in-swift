//
//  PGS_120817.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120817

import Foundation

func answer_PGS_배열의_평균값_120817() {
    func solution(_ numbers:[Int]) -> Double {
        return Double(numbers.reduce(0, +)) / Double(numbers.count)
    }
}
