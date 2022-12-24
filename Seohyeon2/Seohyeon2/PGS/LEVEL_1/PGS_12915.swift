//
//  PGS_12915.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12915

import Foundation

func answer_PGS_문자열_내_마음대로_정렬하기_12915() {
    func solution(_ strings:[String], _ n:Int) -> [String] {
        let result = strings.sorted().map {
            Array($0)
        }
        return result.sorted { $0[n] < $1[n] }.compactMap { String($0) }
    }
}
