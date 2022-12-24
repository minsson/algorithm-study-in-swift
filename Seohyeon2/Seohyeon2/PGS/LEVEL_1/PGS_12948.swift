//
//  PGS_12948.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12948

import Foundation

func answer_PGS_핸드폰_번호_가리기_12948() {
    func solution(_ phone_number:String) -> String {
        if phone_number.count < 4 || phone_number.count > 20 {
            return ""
        }
        
        let index = phone_number.index(phone_number.endIndex, offsetBy: -4)
        var result = String(repeating: "*" , count: phone_number.count - 4) + phone_number[index...]
        
        return result
    }
}
