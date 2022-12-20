//
//  PGS_120882.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120882

import Foundation

func answer_PGS_등수_매기기_120882() {
    func solution(_ score:[[Int]]) -> [Int] {
        var avg = score.compactMap { (Double($0[0]) + Double($0[1])) / 2 }
        var result = Array(repeating: 0, count: avg.count)
        var rank = 1
        
        while result.contains(0) {
            var maxNum = avg[0]
            var index = [0]
            for i in 1..<avg.count {
                if maxNum < avg[i] {
                    maxNum = avg[i]
                    index = [i]
                } else if maxNum == avg[i] {
                    index.append(i)
                }
            }
            
            for j in index {
                result[j] = rank
                avg[j] = -1
            }
            
            rank += index.count
        }
        
        
        return result
    }
}
