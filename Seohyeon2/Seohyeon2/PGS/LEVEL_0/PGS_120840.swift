//
//  PGS_120840.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120840

import Foundation

func answer_PGS_구슬을_나누는_경우의_수_120840() {
    func factorial(_ number: Int) -> Double {
        var result = 1.0
        for i in 1...number {
            result *= Double(i)
        }
        
        return result
    }
    
    func solution(_ balls:Int, _ share:Int) -> Int {
        if balls == share {
            return 1
        }
        
        return Int(round(factorial(balls) / (factorial(balls-share) * factorial(share))))
    }
}
