//
//  BOJ_4504.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/30.
//  https://www.acmicpc.net/status?user_id=joo0ee&problem_id=4504&from_mine=1

func answer_BOJ_배수찾기_4504() {
    let number = Int(readLine()!)!
    var input = 1
    var array: [Int] = []
    
    while true {
        input = Int(readLine()!)!
        if input == 0 {
            break
        }
        array.append(input)
    }
    
    for i in array {
        print(i, terminator: " ")
        
        if i % number == 0 {
            print("is a multiple of ", terminator: "")
        } else {
            print("is NOT a multiple of ", terminator: "")
        }
        
        print("\(number).")
    }
}
