//
//  PGS_120885.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120885

import Foundation

func answer_PGS_이진수_더하기_120885() {
    func solution(_ bin1:String, _ bin2:String) -> String {
        let num = (Int(bin1, radix: 2) ?? 0) + (Int(bin2, radix: 2) ?? 0)
        return String(num, radix: 2)
    }
}
