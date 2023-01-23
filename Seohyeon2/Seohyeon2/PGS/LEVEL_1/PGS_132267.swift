//
//  PGS_132267.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/22.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/132267

import Foundation

func answer_PGS_콜라_문제_132267() {
    func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
        var currentN = n
        var newCoke = 0
        var result = 0
        
        while currentN >= a {
            newCoke = (currentN / a) * b
            currentN %= a
            currentN += newCoke
            result += newCoke
        }
        
        return result
    }
}
