//
//  PGS_120912.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/28.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120912

import Foundation

func answer_PGS_7의_개수_120912() {
    func solution(_ array:[Int]) -> Int {
        let result = array.map { String($0) }.joined().filter { String($0) == "7"}
        return result.count
    }
}
