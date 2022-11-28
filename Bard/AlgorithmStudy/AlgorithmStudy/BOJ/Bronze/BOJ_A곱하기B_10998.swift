//
//  BOJ_A곱하기B_10998.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/10/30.
//  https://www.acmicpc.net/problem/10998

import Foundation

func answer_BOJ_A곱하기B_10998() {
    print((readLine()?.split(separator: " ").map{ Int($0)! }.reduce(1, *))!)
}
