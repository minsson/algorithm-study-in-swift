//
//  PGS_120902.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120902

import Foundation

func answer_PGS_문자열_계산하기_120902() {
    func solution(_ my_string:String) -> Int {
        let splited = my_string.split(separator: " ")
        var result = Int(String(splited[0]))!
        
        for i in stride(from: 1, to: splited.count-1, by: 2) {
            if splited[i] == "+" {
                result += Int(String(splited[i+1]))!
            } else {
                result -= Int(String(splited[i+1]))!
            }
        }
        
        return result
    }
}
