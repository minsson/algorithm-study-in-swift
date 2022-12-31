//
//  PGS_12969.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12969

import Foundation

func answer_PGS_직사각형_별찍기_12969() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    let (a, b) = (n[0], n[1])
    
    var stars = [String]()
    
    for _ in 1...a {
        stars.append("*")
    }
    
    for _ in 1...b {
        let result = stars.joined()
        print(result)
    }
}
