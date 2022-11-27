//
//  BOJ_divide_1075.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/27.
//  https://www.acmicpc.net/problem/1075
//
import Foundation

func answer_나누기_1075() {
    print(problem_1075())
}

func problem_1075() -> String {
    
    var N = Int(readLine()!)!
    let F = Int(readLine()!)!
    N = N - (N % 100)
    while N % F != 0 {
        //print(N)
        N += 1
    }
    //print("N : \(N)")
    var result = String(N % 100)
    //print(result)
    return result.count == 1 ? "0\(result)" : "\(result)"
}
