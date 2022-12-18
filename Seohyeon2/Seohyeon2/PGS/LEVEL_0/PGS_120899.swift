//
//  PGS_120899.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120899

import Foundation

func answer_PGS_가장_큰_수_찾기_120899() {
    func solution(_ array:[Int]) -> [Int] {
        return [array.max()!, array.firstIndex(of: array.max()!)!]
    }
}
