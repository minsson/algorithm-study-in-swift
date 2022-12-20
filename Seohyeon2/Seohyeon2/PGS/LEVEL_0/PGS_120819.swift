//
//  PGS_120819.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120819

import Foundation

func answer_PGS_아이스_아메리카노_120819() {
    func solution(_ money:Int) -> [Int] {
        let count = money / 5500
        return [count, money - 5500 * count]
    }
}
