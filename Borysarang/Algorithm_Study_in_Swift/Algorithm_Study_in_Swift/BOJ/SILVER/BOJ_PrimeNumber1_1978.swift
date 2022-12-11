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

func problem_1978(N: Int) -> Int {
    let target = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    var chest: [Int] = Array(0...1000)
    var primeCount = 0
    
    chest[0] = -1
    chest[1] = -1
    
    for (index, number) in chest.enumerated() {
        if chest[index] == -1 {
            continue
        } else {
            let currentPrime = chest[index]
            print("---")
            print("current Prime = \(currentPrime)")
            chest[index] = -1
            if target.contains(currentPrime) {
                primeCount += 1
            }
            for (index, number) in chest.enumerated() {
                if chest[index] == -1 {
                    continue
                } else if chest[index] % currentPrime == 0 {
                    if target.contains(currentPrime) {
                        primeCount += 1
                    }
                    chest[index] = -1
                }
            }
            print("---")
        }
        if primeCount == N {
            break
        }
    }
    return primeCount
}
