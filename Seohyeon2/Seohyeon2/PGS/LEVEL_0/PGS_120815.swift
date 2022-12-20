//
//  PGS_120815.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120815

import Foundation

func answer_PGS_피자_나눠_먹기_2_120815() {
    func solution(_ n:Int) -> Int {
        if n == 1 {
            return 1
        }
        
        if n % 6 == 0 {
            return n / 6
        }
        
        let sixDivisor = [1, 2, 3, 6]
        var nDivisor = [n]
        
        for i in 1...(n/2) {
            if n % i == 0 {
                nDivisor.append(i)
            }
        }
        
        let gcd = nDivisor.filter {
            sixDivisor.contains($0)
        }.max() ?? 1
        
        return n / gcd
    }
}
