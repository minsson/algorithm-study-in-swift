//
//  PGS_120888.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120888

import Foundation

func answer_PGS_중복된_문자_제거_120888() {
    func solution(_ my_string:String) -> String {
        var result = [String]()
        
        my_string.forEach {
            if result.contains(String($0)) == false {
                result.append(String($0))
            }
        }
        
        return result.joined(separator: "")
    }
}
