//
//  BOJ_LeapYear_2753.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/18.
//  https://www.acmicpc.net/problem/2753
//
import Foundation

func answer_윤년_2753() {
    
    let number = Int(readLine()!)!
    print(problem_2753(input: number))
    
}

func problem_2753(input: Int) -> Int {
    
    
    return (input % 4 == 0) && ((input % 100 != 0) || (input % 400 == 0)) ? 1 : 0
}
