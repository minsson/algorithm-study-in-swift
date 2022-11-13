//
//  BOJ_.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/13.
//  https://www.acmicpc.net/problem/1330

import Foundation

func answer_BOJ_1330() {
    let input = readLine()!
    let splitedInput = input.split(separator: " ")
    let firstAnswer = Int(splitedInput[0])!
    let secondAnswer = Int(splitedInput[1])!

    if firstAnswer > secondAnswer {
        print(">")
    } else if firstAnswer < secondAnswer {
        print("<")
    } else {
        print("==")
    }
}
