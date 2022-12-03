//
//  PGS_AdditionOfMatrix.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/12/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12950

import Foundation

func answer_PGS_AdditionOfMatrix_12950(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let row = arr1.count
    let column = arr1.first!.count

    var array = arr1

    for i in 0..<row {
        for j in 0..<column {

            array[i][j] = arr1[i][j] + arr2[i][j]
        }
    }

    return array
}
