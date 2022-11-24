//
//  BOJ_17618.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/17.
//  https://www.acmicpc.net/problem/17618

func answer_BOJ_신기한수_17618() {
    let readNumber = Int(readLine() ?? "0") ?? 0
    var array: [Int] = []
    var i = 10000
    var sum = 0
    var number = 0
    
    
    for num in 1...readNumber {
        i = 1000000
        sum = 0
        number = num
        
        while i >= 1 {
            if number / i >= 1 {
                sum += number / i
                number %= i
            }
            
            i /= 10
        }
        
        if num % sum == 0 {
            array.append(num)
        }
    }
}

func answer_BOJ_신기한수_17618_2() {
    let readNumber = Int(readLine() ?? "0") ?? 0
    var array: [Int] = []
    
    for num in 1...readNumber {
        let sum = String(num).compactMap { Int(String($0)) }.reduce(0, +)
        
        if num % sum == 0 {
            array.append(num)
        }
    }
}
