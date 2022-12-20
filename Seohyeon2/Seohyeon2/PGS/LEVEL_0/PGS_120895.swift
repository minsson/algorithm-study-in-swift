//
//  PGS_120895.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120895

import Foundation

func answer_PGS_인덱스_바꾸기_120895() {
    func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
        var str = my_string.map { String($0) }
        let temp = str[num1]
        str[num1] = str[num2]
        str[num2] = temp
        return str.joined()
    }
}
