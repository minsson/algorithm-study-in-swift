//
//  BOJ_욱제_17356.swift
//  wongbing
//
//  Created by 이원빈 on 2022/10/25.
// https://www.acmicpc.net/problem/17356

import Foundation

func answer_BOJ_욱제_17356() {
    let input = readLine()!.split(separator: " ").compactMap { Double($0) }
    let a = input[0]
    let b = input[1]
    let m = (b - a)/400
    let result = 1 / (1 + pow(10,m))
    print(result)
}
