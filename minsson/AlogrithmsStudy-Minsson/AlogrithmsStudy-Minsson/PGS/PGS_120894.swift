//
//  PGS_120894.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2023/01/01.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120894

import Foundation

func answer_PGS_영어가싫어요_solution(_ numbers:String) -> Int64 {
    var result = numbers

    let dict: [String: String] = [
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9",
        "zero": "0"
    ]
    
    for key in dict.keys {
        result = result.replacingOccurrences(of: key, with: dict[key]!)
    }
    
    return Int64(result)!
}

