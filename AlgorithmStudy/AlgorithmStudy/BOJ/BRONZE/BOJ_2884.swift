//
//  BOJ_2884.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_알람시계_2884() {
    let input = readLine()!
    let inputArr = input.components(separatedBy: " ")
    let a = Int(inputArr[0])!
    let b = Int(inputArr[1])!
    
    var sum = (a * 60) + b
    
    if sum < 45 {
        sum += (24 * 60)
    }
    
    let alarm = sum - 45
    
    let hour = alarm / 60
    let minute = alarm % 60
    
    print("\(hour) \(minute)")
}
