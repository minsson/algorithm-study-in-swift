//
//  BOJ_10951.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/04.
//  https://www.acmicpc.net/problem/10951

import Foundation

func answer_BOJ_10951() {
    while let input = readLine() {
        let inputArray = input.split(separator: " ").map{ Int($0)! }
        print(inputArray[0] + inputArray[1])
    }
}
