//
//  BOJ_PrimeNumber1_1978.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/11.
//  https://www.acmicpc.net/problem/1978
//

import Foundation

func answer_소수찾기_1978() {
    let N =  Int(readLine()!)!
    print(problem_1978(N: N))
}

func problem_1978(N: Int) -> Int{
    let target = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    var num = 1000
    var numArray = Array(repeating: 0, count: num + 1)
    var count = 0

    for i in 2...num {
        numArray[i] = i
    }

    for i in 2...num {
        if numArray[i] == 0 {
            continue
        }
        
        for j in stride(from: i+i, through: num, by: i) {
            numArray[j] = 0;
        }
    }

    for i in target {

        if numArray.contains(i) {
            count += 1
        }
    }

    return count
}
