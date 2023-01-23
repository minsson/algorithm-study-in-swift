//
//  PGS_87389.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/22.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/87389

import Foundation

func answer_PGS_나머지가_1이_되는_수_찾기_87389() {
    func solution(_ n:Int) -> Int {
        for i in 1...n {
            if n % i == 1 {
                return i
            }
        }
        return 0
    }
}
