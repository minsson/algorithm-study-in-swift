//
//  PGS_12944.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/27.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func answer_PGS_12944(_ arr:[Int]) -> Double {
    let sum = arr.reduce(0) { Double($0) + Double($1) }
    
    return sum / Double(arr.count)
}
