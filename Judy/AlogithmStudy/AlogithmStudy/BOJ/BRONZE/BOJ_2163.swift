//
//  BOJ_2163.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/14.
//  https://www.acmicpc.net/problem/2163

func answer_BOJ_초콜릿자르기_2163() {
    let numbers = readLine()!.components(separatedBy: " ")
    let first = Int(numbers[0])!
    let last = Int(numbers[1])!
    
    print(first*last - 1)
}
