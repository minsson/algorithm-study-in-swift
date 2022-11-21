//
//  BOJ_2869.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/17.
//  https://www.acmicpc.net/problem/2869

import Foundation

func answer_BOJ_2869() {
    let input = readLine()!
    let inputArray = input.split(separator: " ").map { Double($0)!}

    let A = inputArray[0]
    let B = inputArray[1]
    let V = inputArray[2]

    let totalDay = Int(ceil((V - A) / (A - B) + 1))
    print(totalDay)
}

// (x - 1)(A - B) >= V or
// x(A-B)+ B >= V

