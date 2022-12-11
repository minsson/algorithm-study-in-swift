//
//  PGS_12944.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12944

import Foundation

func answer_PGS_평균구하기_solution(_ arr:[Int]) -> Double {
    var sum = 0
    
    arr.forEach { int in
        sum += int
    }
    
    let averageValue = Double(sum) / Double(arr.count)
    
    return averageValue
}

