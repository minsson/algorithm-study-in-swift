//
//  BOJ_모음의개수_1264.swift
//  AlgorithmStudy-unchain
//
//  Created by 오경식 on 2022/10/24.
//  https://www.acmicpc.net/problem/1264

import Foundation

let arr = ["a","e", "i", "o", "u", "A", "E", "I", "O", "U"]
var line = readLine()!

func BOJ_모음의개수_1264() {
    while line != "#" {
        print(line.filter({ element in
            arr.contains(String(element))
        }).count)
        line = readLine()!
    }
}
