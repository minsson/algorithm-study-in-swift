//
//  BOJ_두수비교하기_1330.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/13.
//  https://www.acmicpc.net/problem/1330

import Foundation

func answer_BOJ_두수비교하기_1330() {
    let input = readLine()!
    let leftAnswer = input.components(separatedBy: " ")[0]
    let rightAnswer = input.components(separatedBy: " ")[1]
    
    if Int(leftAnswer)! > Int(rightAnswer)! {
        print(">")
    } else if Int(leftAnswer)! < Int(rightAnswer)! {
        print("<")
    } else {
        print("==")
    }
}
