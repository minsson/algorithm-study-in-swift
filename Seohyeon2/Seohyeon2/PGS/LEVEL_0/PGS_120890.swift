//
//  PGS_120890.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120890

import Foundation

func answer_PGS_가까운_수_120890() {
    func solution(_ array:[Int], _ n:Int) -> Int {
        let sorted = array.sorted()
        var result = (sorted[0], abs(n-sorted[0]))
        
        sorted.forEach {
            if abs(n-$0) < result.1 {
                result = ($0, abs(n-$0))
            }
        }
        return result.0
    }
}
