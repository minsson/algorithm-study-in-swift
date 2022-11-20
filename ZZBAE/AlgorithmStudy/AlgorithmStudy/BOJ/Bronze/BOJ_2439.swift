//
//  BOJ_2439.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/03.
//  https://www.acmicpc.net/problem/2439

import Foundation

func answer_BOJ_2439() {
    guard let repeatNumber = Int(readLine() ?? "") else { return }

    for num in 1...repeatNumber {
        if(num < repeatNumber) {
            for _ in num...repeatNumber - 1 {
                print(" ", terminator: "")
            }
        }
        for _ in 1...num {
            print("*", terminator: "")
        }
        print()
    }
}

// stride(from:, through:, by: ) 함수 복습 후 적용시켜봤던 문제
// ex) stride(from: 1, through: repeatNumber, by: 1)


