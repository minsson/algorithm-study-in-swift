//
//  PGS_120886.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120886

import Foundation

func answer_PGS_A로_B_만들기_120886() {
    func solution(_ before:String, _ after:String) -> Int {
        let sortedBefore = before.map { String($0) }.sorted()
        let sortedAfter = after.map { String($0) }.sorted()
        
        return sortedBefore == sortedAfter ? 1 : 0
    }
}
