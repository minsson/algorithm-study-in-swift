//
//  PGS_12935.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12935

import Foundation

func answer_PGS_제일_작은_수_제거하기_12935() {
    func solution(_ arr:[Int]) -> [Int] {
        if arr.count < 2 {
            return [-1]
        }
        
        let min = arr.sorted()[0]
        let result = arr.filter {$0 != min}
        
        return result
    }
}
