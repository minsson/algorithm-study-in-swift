//
//  BOJ_막대기_1094.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/10.
// https://www.acmicpc.net/problem/1094
// 14분

func answer_BOJ_막대기_1094() {
    let x = Int(readLine()!)!
    var count = 0
    String(x, radix: 2).forEach { char in
        if char == "1" {
            count += 1
        }
    }
    print(count)
}
