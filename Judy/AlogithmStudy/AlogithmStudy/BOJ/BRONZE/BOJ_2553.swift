//
//  BOJ_2553.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/30.
//  https://www.acmicpc.net/problem/2553

func answer_BOJ_마지막팩토리얼수_2553() {
    let number = Int(readLine()!)!
    var sum = 1
    var result = 1

    for i in 1...number {
        sum *= i
        result = sum % 10
        
        while result == 0 {
            sum /= 10
            result = sum % 10
        }
        
        sum %= 1000000
    }

    print(result)


}
