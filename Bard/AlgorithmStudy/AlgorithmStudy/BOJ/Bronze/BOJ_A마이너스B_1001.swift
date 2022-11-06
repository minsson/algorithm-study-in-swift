//
//  BOJ_A마이너스B_1001.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/10/19.
//  https://www.acmicpc.net/problem/1001

import Foundation

func answer_BOJ_A마이너스B_1001() {
    let input = readLine()!
    let problem = input.components(separatedBy: " ")
    let leftNumber = Int(problem[0])!
    let rightnumber = Int(problem[1])!
    
    print(leftNumber - rightnumber)
}
