//
//  BOJ_1676.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/18.
//  https://www.acmicpc.net/problem/1676

import Foundation

func answer_BOJ_1676() {
    let input = Int(readLine()!)!
    var count = 0

    for i in 1..<input + 1 {
        var num = i

        while num > 0, num % 5 == 0 {
            count += 1
            num /= 5
        }
    }
    print(count)
}

//let n = Int(readLine()!)!
//print((n/5) + (n/25) + (n/125))
