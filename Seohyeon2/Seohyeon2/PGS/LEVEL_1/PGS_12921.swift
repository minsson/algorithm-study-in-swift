//
//  PGS_12921.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12921

import Foundation

func answer_PGS_소수_찾기_12921() {
    func solution(_ n:Int) -> Int {
        var isPrimeArray = Array(repeating: true, count: n + 1)
        var primeCount = 0
        
        isPrimeArray[0] = false
        isPrimeArray[1] = false
        for i in 0...n {
            if isPrimeArray[i] {
                for j in stride(from: i * 2, through: n, by: i) {
                    isPrimeArray[j] = false
                }
                primeCount += 1
            }
        }
        
        return primeCount
    }
}
