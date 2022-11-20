//
//  BOJ_1330.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_두수비교하기_1330() {
    let input = readLine()!
    let inputArr = input.components(separatedBy: " ")
    let a = Int(inputArr[0])!
    let b = Int(inputArr[1])!
    if a > b {
        print(">")
    } else if a < b {
        print("<")
    } else if a == b {
        print("==")
    }
}
