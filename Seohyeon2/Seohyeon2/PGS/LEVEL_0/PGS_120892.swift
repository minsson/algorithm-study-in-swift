//
//  PGS_120892.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120892

import Foundation

func answer_PGS_암호_해독_120892() {
    func solution(_ cipher:String, _ code:Int) -> String {
        let arr = cipher.map { String($0) }
        var result = ""
        for index in 0...cipher.count - 1 {
            if (index + 1) % code == 0 {
                result += arr[index]
            }
        }
        return result
    }
}
