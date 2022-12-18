//
//  PGS_120850.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120850

import Foundation

func answer_PGS_문자열_정렬하기_1_120850() {
    func solution(_ my_string:String) -> [Int] {
        let result = my_string.compactMap { Int(String($0)) }.sorted()
        return result
    }
}
