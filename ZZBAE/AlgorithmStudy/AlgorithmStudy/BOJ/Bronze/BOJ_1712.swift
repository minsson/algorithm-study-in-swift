//
//  BOJ_1712.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/20.
//  https://www.acmicpc.net/problem/1712

import Foundation

func answer_BOJ_1712() {
    let input = readLine()!
    let n = (input.split(separator: " ").map{ Int($0)! })
    let A = n[0]
    let B = n[1]
    let C = n[2]

    if B >= C {
        print("-1")
    } else {
        print("\((A / (C - B) ) + 1)")
    }
}
