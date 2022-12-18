//
//  PGS_120822.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120822

import Foundation

func answer_PGS_문자열_뒤집기_120822() {
    func solution(_ my_string:String) -> String {
        return my_string.map { String($0) }.reversed().joined(separator: "")
    }
}
