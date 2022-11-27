//
//  PGS_120808.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/13.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120808

import Foundation

func answer_PGS_분수의_덧셈() {
    func solution(
        _ denum1:Int,
        _ num1:Int,
        _ denum2:Int,
        _ num2:Int
    ) -> [Int] {
        let up = (denum1 * num2) + (denum2 * num1)
        let down = num1 * num2
        var result = [up, down]
        
        for i in (1...down) {
            if (up % i == 0) && (down % i == 0) {
                result[0] = up / i
                result[1] = down / i
            }
        }
        return result
    }
}
