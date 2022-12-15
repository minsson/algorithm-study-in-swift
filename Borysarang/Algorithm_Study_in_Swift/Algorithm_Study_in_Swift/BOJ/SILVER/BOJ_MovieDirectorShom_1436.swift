//
//  BOJ_MovieDirectorShom_1436.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/06.
//  https://www.acmicpc.net/problem/1436
//
import Foundation

func answer_영화감독숌_1436() {
    print(problem_1436(Int(readLine()!)!))
}

func problem_1436(_ targetCount: Int) -> Int {
    var currentCount = 0
    var currentNumber = 666
    while true {
        if targetCount == currentCount {
            break
        }
        //if String(currentNumber).contains("666") {
        if isTitle(target: currentNumber) {
            currentCount += 1
        }
            
        currentNumber += 1
    }
    
    return currentNumber - 1
}

func isTitle(target: Int) -> Bool {
    var num = target
    while num >= 666 {
        if num % 1000 == 666 {
            return true
        }
        num /= 10
    }
    return false
}
