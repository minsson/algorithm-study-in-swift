//
//  PGS_120836.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120836

import Foundation

func answer_PGS_순서쌍의_개수_120836() {
    func solution(_ n:Int) -> Int {
        let numbers = (1...n).map {
            $0
        }
        var result = 0
        for i in numbers {
            if n % i == 0 {
                result += 1
            }
        }
        return result
    }
}
