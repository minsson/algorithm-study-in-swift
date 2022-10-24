//
//  answer_BOJ_AxB_10998.swift
//  AlgorithmStudy-unchain
//
//  Created by 오경식 on 2022/10/24.
//  https://www.acmicpc.net/source/50704388

import Foundation

func answer_BOJ_AxB_10998() {
    let line = readLine()!
    let lineArr = line.split(separator: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    guard a > 0, b < 10 else { return }
    print(a*b)
}

