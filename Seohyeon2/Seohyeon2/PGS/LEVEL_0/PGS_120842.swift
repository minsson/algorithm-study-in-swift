//
//  PGS_120842.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120842

import Foundation

func answer_PGS_2차원으로_만들기_120842() {
    func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
        var result = [[Int]]()
        
        for i in stride(from: 0, through: num_list.count-1, by: n) {
            result.append(Array(num_list[i..<i+n]))
        }
        
        return result
    }
}
