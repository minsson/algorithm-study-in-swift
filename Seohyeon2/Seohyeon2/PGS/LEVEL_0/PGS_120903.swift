//
//  PGS_120903.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120903

import Foundation

func answer_PGS_배열의_유사도_120903() {
    func solution(_ s1:[String], _ s2:[String]) -> Int {
        return Set(s1).intersection(s2).count
    }
}
