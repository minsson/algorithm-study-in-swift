//
//  PGS_120956.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120956

import Foundation

func answer_PGS_옹알이1_120956() {
    func solution(_ babbling:[String]) -> Int {
        let pronunciations = ["aya", "ye", "woo", "ma"]
        var count = 0
        
        babbling.forEach { word in
            let result = pronunciations.reduce(word) { partialResult, pronunciation in
                partialResult.components(separatedBy: pronunciation).joined(separator: " ")
            }
                          
            if result.trimmingCharacters(in: .whitespaces) == "" {
                count += 1
            }
        }
        
        return count
    }
}
