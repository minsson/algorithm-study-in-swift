//
//  PGS_120868.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120868

import Foundation

func answer_PGS_삼각형의_완성조건_2_120847() {
    func solution(_ sides:[Int]) -> Int {
        var result = 0
        
        for _ in (sides.max()! - sides.min()! + 1)..<(sides.max()!) {
            result += 1
        }
        
        for _ in (sides.max()!)..<(sides.max()! + sides.min()!) {
            result += 1
        }
        
        return result
    }
}
