//
//  BOJ_3052.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/06.
//  https://www.acmicpc.net/problem/3052

func answer_BOJ_나머지_3052() {
    
    var numbers: [Int] = []
    var result: Set<Int> = []
    
    for _ in 1...10 {
        let input = Int(readLine()!)!
        numbers.append(input)
    }
    
    numbers.forEach { number in
        let drop = number % 42
        result.insert(drop)
    }
    
    print(result.count)
}
