//
//  DoItDoItNot.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/17.
//  https://www.acmicpc.net/problem/5789

func answer_BOJ_한다안한다_5789() {
    let readNumber = readLine()
    let count = Int(readNumber ?? "0") ?? 0
    var array: [[String]] = []
    var result = false
    
    for _ in 1...count {
        let randomArray = readLine() ?? "0"
        array.append(randomArray.map { String($0) })
    }
    
    for number in array {
        var list = number
        
        while !list.isEmpty {
            if list.removeFirst() == list.removeLast() {
                result = true
            } else {
                result = false
            }
        }
        
        print(result ? "Do-it" : "Do-it-Not")
    }
}
