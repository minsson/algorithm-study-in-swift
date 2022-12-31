//
//  BOJ_1181.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/22.
//  https://www.acmicpc.net/problem/1181

import Foundation

func answer_BOJ_1181() {
    let input = Int(readLine()!)!
    var words = [String]()

    for _ in 0..<input {
        words.append(readLine()!)
    }

    Set(words).sorted { left, right -> Bool in
        return left.count < right.count || (left.count == right.count && left < right)
    }.forEach { word in
        print(word)
    }
}
