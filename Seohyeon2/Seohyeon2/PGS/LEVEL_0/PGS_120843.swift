//
//  PGS_120843.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120843

import Foundation

func answer_PGS_공_던지기_120843() {
    func solution(_ numbers:[Int], _ k:Int) -> Int {
        var result = -2
        
        for _ in 0..<k {
            result += 2
            
            if result > numbers.count {
                result %= numbers.count
            }
        }
        return result + 1
    }
}
