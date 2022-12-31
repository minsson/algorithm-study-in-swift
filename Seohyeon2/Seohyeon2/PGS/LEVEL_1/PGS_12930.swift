//
//  PGS_12930.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func answer_PGS_이상한_문자_만들기_12930() {
    func solution(_ s: String) -> String {
        var answer: String = ""
        var count: Int = 1
        
        s.forEach {
            if count % 2 == 1 {
                answer += $0.uppercased()
            } else {
                answer += $0.lowercased()
            }
            
            if String($0) == " " {
                count = 1
            } else {
                count += 1
            }
        }
        
        return answer
    }
}
