//
//  PGS_120826.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120826

import Foundation

func answer_PGS_특정_문자_제거하기_120826() {
    func solution(_ my_string:String, _ letter:String) -> String {
        let result = Array(my_string).filter{ String($0) != letter }
        return result.map {String($0)}.joined()
    }
}
