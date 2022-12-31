//
//  BOJ_10870.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/25.
//  https://www.acmicpc.net/problem/10870

import Foundation

func answer_BOJ_10870() {
    let input = Int(readLine()!)!

    func fibonacci(n: Int) -> Int {
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }

        var result = fibonacci(n: n - 1) + fibonacci(n: n - 2)

        return result
    }
    print(fibonacci(n: input))
}
