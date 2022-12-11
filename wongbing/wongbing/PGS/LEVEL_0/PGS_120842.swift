//
//  PGS_120842.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://school.programmers.co.kr/learn/courses/30/lessons/120842
// 7분

import Foundation

func answer_PGS_2차원으로만들기(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var matrix = [[Int]]()
    
    var row: [Int] = [] {
        didSet {
            if row.count == n {
                matrix.append(row)
                row = []
            }
        }
    }
    num_list.forEach { num in
        row.append(num)
    }
    return matrix
}
