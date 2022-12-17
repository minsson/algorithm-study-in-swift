//
//  BOJ_OvenClock_2525.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/17.
//  https://www.acmicpc.net/problem/2525
//

import Foundation

func answer_오븐시계_2525() {
    let inputAB =  readLine()!.components(separatedBy: " ").map({Int($0)!})
    let inputC = Int(readLine()!)!
    print(problem_2525(A: inputAB[0], B: inputAB[1], C: inputC))
    
    
}

func problem_2525(A: Int, B: Int, C: Int) -> String {
    var hour = C / 60
    hour = hour % 24
    let minute = C % 60
    
    var resultHour = A + hour
    var resultMinute = B + minute
    
    if resultMinute >= 60 {
        resultHour += 1
        resultMinute -= 60
    }
    
    if resultHour >= 24 {
        resultHour -= 24
    }
    
    
    return "\(resultHour) \(resultMinute)"
}
