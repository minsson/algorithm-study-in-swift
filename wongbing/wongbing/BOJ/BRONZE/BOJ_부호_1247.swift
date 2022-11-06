//
//  BOJ_부호_1247.swift
//  wongbing
//
//  Created by 이원빈 on 2022/10/25.
// https://www.acmicpc.net/problem/1247

func answer_BOJ_부호_1247() {

    (1...3).forEach { _ in
        var overflow = 0
        var result = 0
        let n = Int(readLine()!)!
        (1...n).forEach { _ in
            let input = Int(readLine()!)!
            
            if result > 0 && input > 0 && input > Int.max - result {
                overflow += 1
                result = result - Int.max + input
            } else if result < 0 && input < 0 && input < -(Int.max + result) {
                overflow -= 1
                result = result + Int.max + input
            } else {
                result += input
            }
        }
        if overflow == 1 && result == -Int.max {
            print("0")
            return
        } else if overflow == -1 && result == Int.max {
            print("0")
            return
        } else if overflow == 1 && result > -Int.max && result < 0 {
            print("+")
            return
        } else if overflow == -1 && result < Int.max && result > 0 {
            print("-")
            return
        }
        showResult(result, overflow: overflow)
    }
    
    func showResult(_ result: Int, overflow: Int) {
        if overflow < 0 {
            print("-")
        } else if overflow > 0 {
            print("+")
        } else if result == 0 {
            print(0)
        } else if result < 0 {
            print("-")
        } else if result > 0 {
            print("+")
        }
    }
    
}
