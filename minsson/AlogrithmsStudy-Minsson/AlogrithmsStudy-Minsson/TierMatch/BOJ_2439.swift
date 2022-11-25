//
//  BOJ_2439.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/03.
//  https://www.acmicpc.net/problem/2439

import Foundation

func answer_BOJ_별찍기2_2439() {

    let input = Int(readLine()!)!
    var row = 1

    for _ in 0..<input {
        for _ in 0..<(input-row) {
            print(" ", terminator: "")
        }

        for _ in 0..<row {
            print("*", terminator: "")
        }

        print()
        row += 1
    }
}
