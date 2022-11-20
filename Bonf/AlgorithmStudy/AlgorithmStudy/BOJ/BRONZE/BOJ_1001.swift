//
//  BOJ_1001.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_A마이너스B_1001() {
    let input = readLine()!
    let inputArr = input.components(separatedBy: " ")
    let a = Int(inputArr[0])!
    let b = Int(inputArr[1])!
    print(a-b)
}
