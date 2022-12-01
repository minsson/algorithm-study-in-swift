//
//  BOJ_MinAndMax.swift
//  AlogithmStudy-Sookoong
//
//  Created by 수꿍 on 2022/11/25.
//  https://www.acmicpc.net/problem/10818

import Foundation

func answer_BOJ_MinAndMax_10818() {
    let number = Int(readLine()!)!
    let array = readLine()!.split(separator: " ").map { Int($0)! }
    let min = array.min()!
    let max = array.max()!

    print("\(min) \(max)")
}
