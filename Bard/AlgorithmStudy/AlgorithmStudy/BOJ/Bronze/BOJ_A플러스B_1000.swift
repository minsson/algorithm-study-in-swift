//
//  BOJ_A플러스B_1000.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/10/19.
//  https://www.acmicpc.net/problem/1000

import Foundation

func answer_BOJ_A플러스B_1000() {
    let input = readLine()!
    let problem = input.components(separatedBy: " ")
    let leftNumber = Int(problem[0])!
    let rightnumber = Int(problem[1])!
    
    print(leftNumber + rightnumber)
}
