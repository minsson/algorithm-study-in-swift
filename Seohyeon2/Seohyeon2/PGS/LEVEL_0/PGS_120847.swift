//
//  PGS_120847.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120847

import Foundation

func answer_PGS_최댓값_만들기_1_120847() {
    func solution(_ numbers:[Int]) -> Int {
        var nums = numbers
        nums.sort(by: >)
        return nums[0] * nums[1]
    }
}
