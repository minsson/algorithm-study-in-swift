//
//  PGS_120831.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120831

import Foundation

func answer_PGS_짝수의_합_120831() {
    func solution(_ n:Int) -> Int {
        var sum = 0
        (0...n).forEach { num in
            if num % 2 == 0 {
                sum += num
            }
        }
        return sum
    }
}
