//
//  BOJ_Remainder.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/08.
//  https://www.acmicpc.net/problem/10430

import Foundation

func answer_BOJ_Remainder_10430() {
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    let c = Int(input[2])!

    print((a + b) % c)
    print(((a % c) + (b % c)) % c)
    print((a * b) % c)
    print(((a % c) * (b % c)) % c)
}
