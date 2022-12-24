//
//  PGS_12954.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12954

import Foundation

func answer_PGS_x만큼_간격이_있는_n개의_숫자_12954() {
    func solution(_ x:Int, _ n:Int) -> [Int64] {
        var result = [Int64]()
        var currentNumber = Int64(x)
        
        for _ in 0..<n {
            result.append(currentNumber)
            currentNumber += Int64(x)
        }

        return result
    }
}
