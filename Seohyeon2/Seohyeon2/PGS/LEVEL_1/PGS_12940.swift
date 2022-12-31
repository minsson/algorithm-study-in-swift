//
//  PGS_12940.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12940

import Foundation

func answer_PGS_최대공약수와_최소공배수_12940() {
    func solution(_ n:Int, _ m:Int) -> [Int] {
        var min = 0
        var gcd = 0
        var lcm = 0
        
        if n >= m {
            min = n
        } else {
            min = m
        }
        
        for i in 1...min {
            if (n % i == 0) && (m % i == 0) {
                gcd = i
            }
        }
        
        lcm = n * m / gcd
        
        return [gcd, lcm]
    }
}
