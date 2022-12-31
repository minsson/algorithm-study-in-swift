//
//  BOJ_25304.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/31.
//  https://www.acmicpc.net/problem/25304

import Foundation

func answer_BOJ_25304() {
    let totalPrice = Int(readLine()!)!
    let kinds = Int(readLine()!)!
    var estimatedPrice = 0
    
    for _ in 1...kinds {
        let input = readLine()!
        let price = Int(input.components(separatedBy: " ")[0])!
        let thingCount = Int(input.components(separatedBy: " ")[1])!
        
        estimatedPrice += price * thingCount
    }
    
    if estimatedPrice == totalPrice {
        print("Yes")
    } else {
        print("No")
    }
}

