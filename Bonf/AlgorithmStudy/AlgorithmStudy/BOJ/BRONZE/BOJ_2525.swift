//
//  BOJ_2525.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/11.
//

import Foundation

func answer_BOJ_오븐시계_2525() {
    let currentTime = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let cookingTime = Int(readLine()!)!
    var currentHour = currentTime[0]
    var currentMinute = currentTime[1] + cookingTime
    
    if currentMinute > 59 {
        currentHour += (currentMinute / 60)
        currentMinute %= 60
    }
    
    if currentHour > 23 {
        currentHour %= 24
    }
    
    print("\(currentHour) \(currentMinute)")
}
