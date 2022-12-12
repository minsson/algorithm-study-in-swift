//
//  BOJ_2884.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/12.
//  https://www.acmicpc.net/problem/2884

import Foundation

func answer_BOJ_2884() {
    let input = readLine()!
    let hourInput = Int(input.components(separatedBy: " ")[0])!
    let minuteInput = Int(input.components(separatedBy: " ")[1])!
    let alarmMinute = 45
    var hourOutput = hourInput
    var minuteOutput = minuteInput
    
    if minuteInput - alarmMinute < 0 {
        if hourInput == 0 {
            hourOutput = 23
        } else {
            hourOutput -= 1
        }
        
        minuteOutput = 60 - (alarmMinute - minuteInput)
    } else {
        minuteOutput = minuteInput - alarmMinute
    }
    
    print("\(hourOutput) \(minuteOutput)")
}
