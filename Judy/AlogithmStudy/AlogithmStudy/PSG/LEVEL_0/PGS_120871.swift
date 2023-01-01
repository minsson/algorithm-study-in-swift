//
//  PGS_120871.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/01.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120871

import Foundation

func answer_PGS_120871(_ n:Int) -> Int {
    var result = 0
    
    for _ in 1...n {
        result += 1
        
        while result % 3 == 0 || String(result).contains("3") {
            result += 1
        }
    }
    
    return result
}
