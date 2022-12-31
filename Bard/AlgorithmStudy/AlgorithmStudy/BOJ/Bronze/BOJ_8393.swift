//
//  BOJ_8393.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/24.
//  https://www.acmicpc.net/problem/8393

import Foundation

func answer_BOJ_8393() {
    let input = Int(readLine()!)!
    let array = (1...input)
 
    print(array.reduce(0, +))
}
