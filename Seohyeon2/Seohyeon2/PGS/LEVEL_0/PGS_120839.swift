//
//  PGS_120839.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120839

import Foundation

func answer_PGS_가위_바위_보_120839() {
    func solution(_ rsp:String) -> String {
        let result = rsp.map { a in
            switch a {
            case "2":
                return "0"
            case "0":
                return "5"
            default:
                return "2"
            }
        }.joined()
        
        return result
    }
}
