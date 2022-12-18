//
//  PGS_120854.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120854

import Foundation

func answer_PGS_배열_원소의_길이_120854() {
    func solution(_ strlist:[String]) -> [Int] {
        return strlist.map { $0.count }
    }
}
