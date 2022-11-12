//
//  BOJ_A나누기B_1008.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/05.
//  https://www.acmicpc.net/problem/1008

import Foundation

func BOJ_A나누기B_1008() {
    print(1 / readLine()!.split(separator: " ").map{ Double($0)! }.reduce(1){ $1 / $0 })
}

