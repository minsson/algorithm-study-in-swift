//
//  BOJ_APlusB.swift
//  AlogrithmsStudy-Sookoong
//
//  Created by 수꿍 on 2022/10/30.
//  https://www.acmicpc.net/problem/1000

import Foundation

func answer_BOJ_APlusB_1000() {
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input.first!)!
    let b = Int(input.last!)!

    if a > 0, a < 10, b > 0, b < 10 {
        print(a + b)
    }
}
