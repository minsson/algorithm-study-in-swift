//
//  BOJ_2562.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/25.
//  https://www.acmicpc.net/problem/2562

import Foundation

func answer_BOJ_최댓값_2562() {
    var numbers: [Int] = []
    for _ in 1...9 {
        let input = Int(readLine()!)!
        numbers.append(input)
    }
    
    let max = numbers.max()!
    
    print(max)
    print(numbers.firstIndex(of: max)! + 1)
}
