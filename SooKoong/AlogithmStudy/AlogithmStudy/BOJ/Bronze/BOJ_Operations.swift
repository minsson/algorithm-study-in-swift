//
//  BOJ_Operations.swift
//  AlogrithmsStudy-Sookoong
//
//  Created by 수꿍 on 2022/10/30.
//  https://www.acmicpc.net/problem/10869

import Foundation

func answer_BOJ_Operations_10869() {
    let input = readLine()!
    let string = input.components(separatedBy: " ")
    let a = Int(string.first ?? "0")!
    let b = Int(string.last ?? "0")!

    if a <= 10000, b <= 10000 {
        print(a + b)
        print(a - b)
        print(a * b)
        print(a / b)
        print(a % b)
    }
}
