//
//  BOJ_1264.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/02.
//  https://www.acmicpc.net/problem/1264

import Foundation

func answer_BOJ_1264() {
    let vowelsCheck = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    while true {
        let input = (readLine() ?? "")
        var count = 0

        if input == "#" {
            break
        }

        input.forEach { input in
//            let lower = input.lowercased()
            if vowelsCheck.contains(String(input)) {
                count += 1
            }
        }
        print(count)
    }
}

