//
//  PGS_120907.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120907

import Foundation

func answer_PGS_OX퀴즈_120907() {
    func solution(_ quiz:[String]) -> [String] {
        return quiz.map {
            var value = 0
            let splited = $0.split(separator: " ")
            
            if String(splited[1]) == "+" {
                value = Int(String(splited[0]))! + Int(String(splited[2]))!
            } else {
                value = Int(String(splited[0]))! - Int(String(splited[2]))!
            }
            
            if value == Int(String(splited[4]))! {
                return "O"
            } else {
                return "X"
            }
        }
    }
}
