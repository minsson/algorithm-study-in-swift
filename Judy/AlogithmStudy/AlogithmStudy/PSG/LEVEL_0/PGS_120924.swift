//
//  PGS_120924.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/24.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120924

import Foundation

func answer_PSG_다음에올숫자(_ common:[Int]) -> Int {
    if common[1] - common[0] == common[2] - common[1] {
        return common[0] + (common[1] - common[0]) * common.count
    } else {
        return common[0] * Int(pow(Double((common[1] / common[0])), Double(common.count)))
    }
}
