//
//  BOJ_2525.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/17.
//  https://www.acmicpc.net/problem/2525

import Foundation

func answer_BOJ_2525() {
    let input = readLine()!
    var currentTime = Int(input.components(separatedBy: " ")[0])!
    var currentMinute = Int(input.components(separatedBy: " ")[1])!
    let cookingTime = Int(readLine()!)!
    
    if cookingTime + currentMinute > 60 {
        if currentTime == 23 {
            currentTime = 0
        } else {
            currentTime += 1
        }
        
        currentMinute = (currentMinute + cookingTime) - 60
    } else {
        currentMinute += cookingTime
    }
    
    while currentMinute >= 60 {
            if currentTime == 23 {
                currentTime = 0
            } else {
                currentTime += 1
            }
        currentMinute -= 60
    }
    
    print(currentTime, currentMinute)
}
