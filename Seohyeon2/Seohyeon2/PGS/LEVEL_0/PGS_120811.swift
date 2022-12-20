//
//  PGS_120811.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120811

import Foundation

func answer_PGS_중앙값_구하기_120811() {
    func solution(_ array:[Int]) -> Int {
        let result = array.sorted()
        
        return result[result.count/2]
    }
}
