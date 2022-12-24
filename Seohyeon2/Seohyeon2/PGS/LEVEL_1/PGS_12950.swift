//
//  PGS_12950.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12950

import Foundation

func answer_PGS_행렬의_덧셈_12950() {
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        var result = [[Int]]()
        for row in 0..<arr1.count {
            var addedArr = [Int]()
            for col in 0..<arr1[row].count {
                addedArr.append(arr1[row][col] + arr2[row][col])
            }
            result.append(addedArr)
        }
        
        return result
    }
}
