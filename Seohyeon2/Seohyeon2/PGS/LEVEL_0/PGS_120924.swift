//
//  PGS_120924.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120924

import Foundation

func answer_PGS_다음에_올_숫자() {
    func solution(_ common:[Int]) -> Int {
        let d = (common[1] - common[0])
        var r = 1
        var result = 0

        if common[0] != 0 && common[0] != 0 {
           r = common[1] / common[0]
        }

        if common[1] + d == common[2] {
            result = common[0] + (common.count * d)
        } else {
            result = common[common.count - 1] * r
        }
        return result
    }
}
