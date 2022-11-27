//
//  BOJ_10757.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/25.
// https://www.acmicpc.net/problem/10757
// 30분

func answer_BOJ_큰수A더하기B_10757() {
    let input = readLine()!.split(separator: " ")
    var lhs = input[0]
    var rhs = input[1]
    var result = ""
    var overflow = 0
    while lhs.isEmpty == false || rhs.isEmpty == false {
        let sum = Int(String(lhs.popLast() ?? "0"))! + Int(String(rhs.popLast() ?? "0"))! + overflow
        if lhs.isEmpty && rhs.isEmpty {
            result = String(sum) + result
            break
        }
        let piece = sum % 10
        overflow = sum / 10
        result = String(piece) + result
    }
    print(result)
}
