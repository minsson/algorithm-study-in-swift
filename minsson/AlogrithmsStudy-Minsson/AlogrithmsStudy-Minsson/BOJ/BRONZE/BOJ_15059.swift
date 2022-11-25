//
//  BOJ_15059.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/20.
//  https://www.acmicpc.net/problem/15059

import Foundation

func answer_BOJ_HardChoice_15059() {
    let input1 = readLine()!
    let input2 = readLine()!
    
    let strings1 = input1.components(separatedBy: " ")
    let strings2 = input2.components(separatedBy: " ")
    
    var count = 0
    
    for i in 0..<strings1.count {
        let num1 = Int(strings1[i])!
        let num2 = Int(strings2[i])!
        
        if num1 < num2 {
            count += num2 - num1
        }
    }
    
    print(count)
}
