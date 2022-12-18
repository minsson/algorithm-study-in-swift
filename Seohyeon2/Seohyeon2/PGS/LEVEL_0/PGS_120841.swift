//
//  PGS_120841.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120841

import Foundation

func answer_PGS_점의_위치_구하기_120841() {
    func solution(_ dot:[Int]) -> Int {
        if dot[0] > 0 && dot[1] > 0 {
            return 1
        } else if dot[0] < 0 && dot[1] > 0 {
            return 2
        } else if dot[0] < 0 && dot[1] < 0 {
            return 3
        }
        return 4
    }
}
