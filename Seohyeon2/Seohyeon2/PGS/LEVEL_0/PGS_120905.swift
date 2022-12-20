//
//  PGS_120905.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120905

import Foundation

func answer_PGS_n의_배수_고르기_120905() {
    func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
        return numlist.filter {$0 % n == 0}
    }
}
