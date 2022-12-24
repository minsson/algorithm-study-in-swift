//
//  PGS_12917.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12917

import Foundation

func answer_PGS_문자열_내림차순으로_배치하기_12917() {
    func solution(_ s:String) -> String {
        return s.map { String($0) }.sorted { $0 > $1 }.joined()
    }
}
