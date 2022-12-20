//
//  PGS_120829.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120829

import Foundation

func answer_PGS_각도기_120829() {
    func solution(_ angle:Int) -> Int {
        if angle < 90 {
            return 1
        } else if angle == 90 {
            return 2
        } else if angle < 180 {
            return 3
        }
        return 4
    }
}
