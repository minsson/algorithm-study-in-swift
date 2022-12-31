//
//  PGS_120868.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/24.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120868

import Foundation

func answer_PGS_삼각형의완성조건(_ sides:[Int]) -> Int {
    let max = sides.max()!
    var count = abs(sides[0] - sides[1]) + 1
    let count1 = max - count + 1
    var count2 = max
    
    while count2 < sides[0] + sides[1]  {
        count2 += 1
    }
    
    return count1 + (count2 - max - 1)
}
