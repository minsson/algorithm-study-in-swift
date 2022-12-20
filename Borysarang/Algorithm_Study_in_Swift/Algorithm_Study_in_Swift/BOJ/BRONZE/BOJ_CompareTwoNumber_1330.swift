//
//  BOJ_LeapYear_2753.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/18.
//  https://www.acmicpc.net/problem/1330
//
import Foundation

func answer_두수비교하기_1330() {
    
    let numbers = readLine()!.components(separatedBy: " ").map({Int($0)!})
    print(problem_1330(input: numbers))
    
}

func problem_1330(input: [Int]) -> String {
    let A = input[0]
    let B = input[1]
    if A > B {
        return ">"
    } else if A < B {
        return "<"
    } else {
        return "=="
    }
}
