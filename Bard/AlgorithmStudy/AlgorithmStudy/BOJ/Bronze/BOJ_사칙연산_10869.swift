//
//  BOJ_사칙연산_10869.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/10/30.
//  https://www.acmicpc.net/problem/10869

import Foundation

func answer_BOJ_사칙연산_10869() {
    let input = readLine()!
    let problem = input.components(separatedBy: " ")
    let leftNumber = Int(problem[0])!
    let rightnumber = Int(problem[1])!
    
    print(leftNumber + rightnumber)
    print(leftNumber - rightnumber)
    print(leftNumber * rightnumber)
    print(leftNumber / rightnumber)
    print(leftNumber % rightnumber)
}
