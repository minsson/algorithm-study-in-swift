//
//  BOJ_부호_1247.swift
//  AlgorithmStudy-Seohyeon2
//
//  Created by seohyeon park on 2022/10/25.
//  https://www.acmicpc.net/problem/1247

import Foundation

func answer_BOJ_부호_1247() {
    let maxInt = Int.max
    let minInt = Int.min + 1

    (1...3).forEach { _ in
        let n = Int(readLine()!)!
        var sum = 0
        var over = 0

        for _ in (0..<n) {
            let temp = Int(readLine()!)!
            
            if sum > 0 && temp > 0 && temp > maxInt - sum {
                over += 1
                return
            }
            
            if sum < 0 && temp < 0 && temp < minInt - sum {
                over -= 1
                return
            }
            
            sum += temp
        }
        
        if Int(sum) == 0 {
            print("0")
        } else if (Int(sum) > 0) || over > 0 {
            print("+")
        } else if (Int(sum) < 0) || over < 0{
            print("-")
        }
    }
}
