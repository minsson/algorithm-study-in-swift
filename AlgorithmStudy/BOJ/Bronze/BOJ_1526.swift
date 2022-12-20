//
//  BOJ_.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/12/16.
//  https://www.acmicpc.net/problem/1526

import Foundation

func answer_BOJ_1526() {
    let input = Int(readLine()!)!

    for i in stride(from: input, through: 4, by: -1) {
        let stringNum = String(i)

        if stringNum.contains("1") || stringNum.contains("2") || stringNum.contains("3") || stringNum.contains("5") || stringNum.contains("6") || stringNum.contains("8") || stringNum.contains("9") || stringNum.contains("0") {
            continue
        } else {
            print(i)
            break
        }
    }
}

func answer_BOJ_1526_2() {
    let input = Int(readLine()!)!
    var answer = 0

    for i in 4...input {
        let num = String(i).map { String($0) }
        var isCorrectNumber = true

        for input in num {
            if ["1", "2", "3", "5", "6", "8", "9", "0"].contains(input) {
                isCorrectNumber = false
            }
        }
        if isCorrectNumber {
            answer = i
        }
    }
    print(answer)
}
