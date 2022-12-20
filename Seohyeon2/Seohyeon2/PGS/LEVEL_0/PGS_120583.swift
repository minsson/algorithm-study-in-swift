//
//  PGS_120583.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120583

import Foundation

func answer_PGS_중복된_숫자_개수_120583() {
    func solution(_ array:[Int], _ n:Int) -> Int {
        return array.filter {
            $0 == n
        }.count
    }
}
