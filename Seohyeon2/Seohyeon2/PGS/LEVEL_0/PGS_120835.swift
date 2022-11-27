//
//  PGS_120835.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/28.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120835

import Foundation

func answer_PGS_진료_순서_정하기_120835() {
    func solution(_ emergency:[Int]) -> [Int] {
        let priority = emergency.sorted(by: > )
        var result = [Int]()
        
        for e in emergency {
            for i in (0..<priority.count) {
                if e == priority[i] {
                    result.append(i+1)
                }
            }
        }
        
        return result
    }
}
