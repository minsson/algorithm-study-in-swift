//
//  PGS_120825.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120825

import Foundation

func answer_PGS_문자_반복_출력하기_120825() {
    func solution(_ my_string:String, _ n:Int) -> String {
        var result = ""
        for str in my_string {
            result += (String(repeating: str, count: n))
        }
        return result
    }
}
