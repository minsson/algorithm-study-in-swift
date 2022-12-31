//
//  PGS_12928.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12928

import Foundation

func answer_PGS_약수의_합_12928() {
    func solution(_ n:Int) -> Int {
        if n == 0 {
            return 0
        }
        
        var sum = 0
        for i in (1...n) {
            if n % i == 0 {
                sum += i
            }
        }
        return sum
    }
}
