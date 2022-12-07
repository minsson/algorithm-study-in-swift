//
//  BOJ_2869.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/17.
//  https://www.acmicpc.net/problem/2869
//

import Foundation

func answer_달팽이는올라가고싶다_2869() {
    var result: Int
    
    let numberS =  readLine()!.components(separatedBy: " ")
    result = problem_2869(input: numberS)
    
    
    print(result)
    
}

func problem_2869(input: [String]) -> Int {
    let A = Int(input[0])!
    let B = Int(input[1])!
    var V = Int(input[2])!
    let dayMove = A - B
    var day = 0
    
    V -= A
    day += 1
    
    day += V/dayMove
    day += V%dayMove > 0 ? 1 : 0
    /*
     2 1 5 = 4
     하루 1 마지막날 1 빼면 3
    */
    return day
}
