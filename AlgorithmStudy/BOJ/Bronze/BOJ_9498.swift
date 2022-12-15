//
//  BOJ_9498.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/12.
//  https://www.acmicpc.net/problem/9498

import Foundation

func answer_BOJ_9498() {
    let input = Int(readLine()!)!

    if input >= 90 && input <= 100 {
        print("A")
    } else if input >= 80 && input <= 89 {
        print("B")
    } else if input >= 70 && input <= 79 {
        print("C")
    } else if input >= 60 && input <= 69 {
        print("D")
    } else {
        print("F")
    }
}
