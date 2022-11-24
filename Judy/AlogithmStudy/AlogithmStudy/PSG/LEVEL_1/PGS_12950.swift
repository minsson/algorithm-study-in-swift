//
//  addMatrix.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/09.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12950

func answer_PGS_행렬의덧셈(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    for (ar1, ar2) in zip(arr1, arr2) {
        var sum: [Int] = []
        
        for (aa1, aa2) in zip(ar1, ar2) {
            sum.append(aa1 + aa2)
        }
        
        result.append(sum)
    }

    return result
}
