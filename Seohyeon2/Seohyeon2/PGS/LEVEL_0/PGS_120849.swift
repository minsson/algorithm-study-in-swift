//
//  PGS_120849.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120849

import Foundation

func answer_PGS_모음_제거_120849() {
    func solution(_ my_string:String) -> String {
        let vowels = ["a", "e", "i", "o", "u"]
        let result = my_string.filter { vowels.contains(String($0)) == false
        }
        return result
    }
}
