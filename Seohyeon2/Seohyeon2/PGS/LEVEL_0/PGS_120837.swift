//
//  PGS_120837.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120837

import Foundation

func answer_PGS_개미_군단_120837() {
    func solution(_ hp:Int) -> Int {
        var hp = hp
        var result = 0
        
        result += hp / 5
        hp %= 5
        result += hp / 3
        hp %= 3
        result += hp
        return result
    }
}
