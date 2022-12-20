//
//  PGS_120893.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120893

import Foundation

func answer_PGS_대문자와_소문자_120893() {
    func solution(_ my_string:String) -> String {
        let result = my_string.map { str in
            if str.isUppercase == true {
                return str.lowercased()
            }
            
            return str.uppercased()
            
        }.joined()
        return result
    }
}
