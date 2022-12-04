//
//  BOJ_ACM-hotel_10250.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/29.
//  https://www.acmicpc.net/problem/10250
//

/*
3
6 12 10
6 12 72
30 50 72
 
 3
 2 4 5
 4 2 7
 3 50 45
*/

import Foundation

func answer_ACM호텔_10250() {
    let testCount =  Int(readLine()!)!
    var result: [String] = []
    
    for _ in 0..<testCount {
        let numberS =  readLine()!.components(separatedBy: " ").map{Int($0)!}
        result.append(problem_10250(numberS))
    }
    for a in 0..<testCount {
        print(result[a])
    }
}

func problem_10250(_ inputs: [Int]) -> String {
    let H = inputs[0]
    let W = inputs[1]
    let N = inputs[2]
    
    var frontNumber = N % H
    if frontNumber == 0 {
        frontNumber = H
    }
    if H == 1 {
        frontNumber = 1
    }
    let frontString = "\(frontNumber)"
    
    var backNumber = (N / H) + 1
    if N % H == 0 {
        backNumber -= 1
    }
    if backNumber > W {
        backNumber = W
    }
    let backString = backNumber >= 10 ? "\(backNumber)" : "0\(backNumber)"
    
    let roomNumber = "\(frontString)\(backString)"
    return roomNumber
}

