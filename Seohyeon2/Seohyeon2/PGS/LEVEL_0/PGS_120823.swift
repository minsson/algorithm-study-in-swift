//
//  PGS_120823.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120823

import Foundation

func answer_PGS_직각삼각형_출력하기_120823() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    
    for row in (1...n[0]) {
        for _ in (1...row) {
            print("*", terminator: "")
        }
        print()
    }
}
