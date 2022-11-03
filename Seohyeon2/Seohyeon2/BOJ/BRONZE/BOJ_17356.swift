//
//  BOJ_17356.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/10/25.
//  https://www.acmicpc.net/problem/17356

import Foundation

func answer_욱제_17356() {
    let input = readLine()!.split(separator: " ").map {
        Int(String($0))!
    }
    let A = input[0]
    let B = input[1]

    let m = Double(B-A) / 400
    print(1 / (pow(10, m) + 1))
}

