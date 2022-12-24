//
//  BOJ_1181.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://www.acmicpc.net/problem/1181

import Foundation

func answer_BOJ_단어_정렬_1181() {
    let n = Int(readLine()!)!
    var arr = [String]()

    for _ in 0..<n {
        arr.append(String(readLine()!))
    }

    let sort1 = Array(Set(arr)).sorted()
    let sort2 = sort1.sorted {
        $0.count < $1.count
    }

    for i in sort2 {
        print(i)
    }
}
