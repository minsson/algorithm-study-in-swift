//
//  PGS_120887.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120887

import Foundation

func answer_PGS_k의_개수_120887() {
    func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
        var str = ""
        for i in (i...j) {
            str += String(i)
        }
        let result = str.filter {
            String($0) == String(k)
        }
        return result.count
    }
}
