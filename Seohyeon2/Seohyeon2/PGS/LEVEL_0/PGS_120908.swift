//
//  PGS_120908.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120908

import Foundation

func answer_PGS_문자열안에_문자열_120908() {
    func solution(_ str1:String, _ str2:String) -> Int {
        let result = str1.components(separatedBy: str2).joined()
        
        if result != str1 {
            return 1
        }
        return 2
    }
}
