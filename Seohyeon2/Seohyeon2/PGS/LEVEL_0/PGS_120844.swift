//
//  PGS_120844.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120844

import Foundation

func answer_PGS_배열_회전시키기_120844() {
    func solution(_ numbers:[Int], _ direction:String) -> [Int] {
        var nums = numbers
        
        if direction == "right" {
            let last = [numbers[numbers.count - 1]]
            nums.removeLast()
            return last + nums
        }
        let first = [numbers[0]]
        nums.removeFirst()
        return nums + first
    }
}
