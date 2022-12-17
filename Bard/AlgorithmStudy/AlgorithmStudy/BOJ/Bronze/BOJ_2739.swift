//
//  BOJ_2739.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/17.
//  https://www.acmicpc.net/problem/2739

import Foundation

func answer_BOJ_2739() {
    let input = Int(readLine()!)!
    var count = 1
    while count < 10 {
        print("\(input) * \(count) = \(input * count)")
        count += 1
    }
}
