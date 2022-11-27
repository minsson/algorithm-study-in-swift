//
//  PGS_120871.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/27.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120871

import Foundation

func answer_PGS_120871(_ n:Int) -> Int {
    var townNumberList: [Int] = []
    var townNumber = 1
    var result = 0
    
    while townNumberList.count != 100  {
        if (String(townNumber).contains("3") == false) && townNumber % 3 != 0 {
            townNumberList.append(townNumber)
            townNumber += 1
        } else {
            townNumber += 1
        }
    }
    result = townNumberList[n-1]
    
    return result
}
