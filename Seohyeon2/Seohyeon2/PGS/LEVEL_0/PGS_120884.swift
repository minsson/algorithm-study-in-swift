//
//  PGS_120884.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120884

import Foundation

func answer_PGS_치킨_쿠폰_120884() {
    func solution(_ chicken:Int) -> Int {
        var remainder = 0
        var ordableChicken = chicken
        var result = 0
        
        while ordableChicken > 0 {
            remainder += (ordableChicken % 10)
            ordableChicken /= 10
            result += ordableChicken
        }
        
        ordableChicken = remainder
        remainder = 0
        
        while ordableChicken > 0 {
            remainder += (ordableChicken % 10)
            ordableChicken /= 10
            result += ordableChicken
        }
        
        if (remainder / 10) > 0 {
            result += (remainder / 10)
        }
        return result
    }
}
