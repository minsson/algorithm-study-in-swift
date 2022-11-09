//
//  BOJ_8958.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/06.
//  https://www.acmicpc.net/problem/8958

func answer_BOJ_OX퀴즈_8958() {
    
    let testCaseCount = Int(readLine()!)!
    
    for _ in 1...testCaseCount {
        let input = readLine()!
        
        var streakCount = 1
        var score = 0
        
        input.forEach { char in
            if char == "O" {
                score += streakCount
                streakCount += 1
            } else {
                streakCount = 1
            }
        }
        
        print(score)
    }
}
