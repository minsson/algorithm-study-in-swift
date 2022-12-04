//
//  BOJ_SugarDelievery_2839.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/05.
//  https://www.acmicpc.net/problem/2839
//
import Foundation

func answer_설탕배달_2839() {
    let input = Int(readLine()!)!
    print(problem_2839(input: input))
}

func problem_2839(input: Int) -> Int {
    var fiveMinimum = input / 5 // 5로만 되면 이게 제일 최소임
    if input < 5 {
        if input == 3 {
            return 1
        }
        return -1
    }
    var count = -1
    while fiveMinimum >= 0 {
        if (input - (5 * fiveMinimum)) % 3 == 0 {
            count = fiveMinimum + ((input - (5 * fiveMinimum)) / 3)
            break
        }
        fiveMinimum -= 1
    }
    
    return count
}
