//
//  PGS_120862.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120862

import Foundation

func answer_PGS_최댓값_만들기_2_120862() {
    func solution(_ numbers:[Int]) -> Int {
        var nums = numbers.sorted()
        let n1 = nums[0] * nums[1]
        nums.reverse()
        let n2 = nums[0] * nums[1]
        return max(n1, n2)
    }
}
