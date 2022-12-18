//
//  PGS_120853.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120853

import Foundation

func answer_PGS_컨트롤_제트_120853() {
    func solution(_ s:String) -> Int {
        var result = 0
        var previous = 0
        let removeWhiteSpace = s.components(separatedBy: " ")
        
        removeWhiteSpace.forEach {
            if $0 == "Z" {
                result -= previous
            } else {
                result += Int($0)!
                previous = Int($0)!
            }
        }
        
        return result
    }
}
