//
//  PGS_120923.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/22.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120923

import Foundation

func answer_PGS_연속된수의합(_ num:Int, _ total:Int) -> [Int] {
    let solution = total / num - (num - 1) / 2
    let result = Array(solution...(solution+num-1))
    
    return result
}
