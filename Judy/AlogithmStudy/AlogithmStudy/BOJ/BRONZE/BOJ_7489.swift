//
//  BOJ_7489.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/30.
//  https://www.acmicpc.net/problem/7489

func answer_BOJ_팩토리얼_7489() {
    let round = Int(readLine()!)!
    var numbers: [Int] = []

    for _ in 1...round {
        let number = Int(readLine()!)!
        numbers.append(number)
    }

    for number in numbers {
        var sum = 1
        var result = 1
        
        for i in 1...number {
            sum *= i
            result = sum % 10
            
            while result == 0 {
                sum /= 10
                result = sum % 10
            }
            
            sum %= 10000
        }

        print(result)
    }
}
