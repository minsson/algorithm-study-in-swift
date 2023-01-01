//
//  PGS_120846.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2023/01/01.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120846

import Foundation

func answer_PGS_합성수찾기_solution(_ n:Int) -> Int {
    var counter = 0
    
    for num in 1...n {
        var tempCounter = 0
        for divider in 1...num {
            if num % divider == 0 {
                tempCounter += 1
            }
            
            if tempCounter >= 3 {
                counter += 1
                break
            }
        }
    }
    
    return counter
}
