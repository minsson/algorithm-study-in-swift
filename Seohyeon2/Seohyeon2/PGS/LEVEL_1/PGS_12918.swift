//
//  PGS_12918.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12918

import Foundation

func answer_PGS_문자열_다루기_기본_12918() {
    func solution(_ s:String) -> Bool {
        return (s.count == 4 || s.count == 6) && (s.allSatisfy { $0.isNumber })
    }
}
