//
//  PGS_120830.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120830

import Foundation

func answer_PGS_양꼬치_120830() {
    func solution(_ n:Int, _ k:Int) -> Int {
        let service = n / 10
        let cost = (n * 12000) + ((k - service) * 2000)
        return cost
    }
}
