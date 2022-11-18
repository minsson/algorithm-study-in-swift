//
//  BOJ_주사위게임_10103.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/18.
//  https://www.acmicpc.net/problem/10103
//

import Foundation

func answer_주사위게임_10103() {
//    let testCount =  1
    let testCount =  Int(readLine()!)!
    
    var firstResult = 100
    var secondResult = 100
    
    for _ in 0..<testCount {
        let round = readLine()!.components(separatedBy: " ").map{Int($0)!}
        
        if round[0] > round[1] {
            secondResult -= round[0]
        } else if round[0] < round[1] {
            firstResult -= round[1]
        } else {
            continue
        }
    }
    
    print(firstResult)
    print(secondResult)
}
