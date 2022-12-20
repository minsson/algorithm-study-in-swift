//
//  PGS_120869.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120869

import Foundation

func answer_PGS_외계어_사전_120869() {
    func solution(_ spell:[String], _ dic:[String]) -> Int {
        for word in dic {
            let temp = spell.filter {
                word.contains($0)
            }
            
            if temp.sorted().joined(separator: "") == spell.sorted().joined(separator: "") {
                return 1
            }
        }
        
        return 2
    }
}
