//
//  PGS_42748.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/08.
//  https://school.programmers.co.kr/learn/courses/30/lessons/42748

import Foundation

func answer_PGS_k번째숫자(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for command in commands {
        var list = Array(array[(command[0]-1)...(command[1]-1)])
        list.sort(by: < )
        result.append(list[(command[2]-1)])
    }
    
    return result
}
